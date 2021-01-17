/*
 * Minimal AArch64 system boot code.
 *
 * Copyright Linaro Ltd 2019
 *
 * Loosely based on the newlib/libgloss setup stubs. Using semihosting
 * for serial output and exit functions.
 */

/*
 * Semihosting interface on ARM AArch64
 * See "Semihosting for AArch32 and AArch64 Relase 2.0" by ARM
 * w0 - semihosting call number
 * x1 - semihosting parameter
 */
#define semihosting_call hlt 0xf000
#define SYS_WRITEC	0x03	/* character to debug channel */
#define SYS_WRITE0	0x04	/* string to debug channel */
#define SYS_EXIT	0x18

	.align	12

	.macro	ventry	label
	.align	7
	b	\label
	.endm

vector_table:
	/* Current EL with SP0.	 */
	ventry	curr_sp0_sync		/* Synchronous	*/
	ventry	curr_sp0_irq		/* Irq/vIRQ  */
	ventry	curr_sp0_fiq		/* Fiq/vFIQ  */
	ventry	curr_sp0_serror		/* SError/VSError  */

	/* Current EL with SPx.	 */
	ventry	curr_spx_sync		/* Synchronous	*/
	ventry	curr_spx_irq		/* IRQ/vIRQ  */
	ventry	curr_spx_fiq		/* FIQ/vFIQ  */
	ventry	curr_spx_serror		/* SError/VSError  */

	/* Lower EL using AArch64.  */
	ventry	lower_a64_sync		/* Synchronous	*/
	ventry	lower_a64_irq		/* IRQ/vIRQ  */
	ventry	lower_a64_fiq		/* FIQ/vFIQ  */
	ventry	lower_a64_serror	/* SError/VSError  */

	/* Lower EL using AArch32.  */
	ventry	lower_a32_sync		/* Synchronous	*/
	ventry	lower_a32_irq		/* IRQ/vIRQ  */
	ventry	lower_a32_fiq		/* FIQ/vFIQ  */
	ventry	lower_a32_serror	/* SError/VSError  */

	.text
	.align 4

	/* Common vector handling for now */
lower_a64_sync:
    stp	x29, x30, [sp, #-16]!
    bl	_exception_entry
    bl  do_sync
    b   _exception_exit

lower_a64_irq:
    stp	x29, x30, [sp, #-16]!
    bl	_exception_entry
    bl  do_irq
    b   _exception_exit

curr_sp0_sync:
    stp	x29, x30, [sp, #-16]!
    bl	_exception_entry
    bl  do_sync
    b   _exception_exit

curr_sp0_irq:
    stp	x29, x30, [sp, #-16]!
    bl	_exception_entry
    bl  do_irq
    b   _exception_exit

curr_spx_sync:
    stp	x29, x30, [sp, #-16]!
    bl	_exception_entry
    bl  do_sync
    b   _exception_exit

curr_spx_irq:
    stp	x29, x30, [sp, #-16]!
    bl	_exception_entry
    bl  do_irq
    b   _exception_exit

curr_sp0_fiq:
curr_sp0_serror:
curr_spx_fiq:
curr_spx_serror:
lower_a64_fiq:
lower_a64_serror:
lower_a32_sync:
lower_a32_irq:
lower_a32_fiq:
lower_a32_serror:
	mov	x0, SYS_WRITE0
	adr	x1, .error
	semihosting_call
	mov	x0, SYS_EXIT
	mov	x1, 1
	semihosting_call
	/* never returns */

/*
 * Enter Exception.
 * This will save the processor state that is ELR/X0~X30
 * to the stack frame.
 */
_exception_entry:
	stp	x27, x28, [sp, #-16]!
	stp	x25, x26, [sp, #-16]!
	stp	x23, x24, [sp, #-16]!
	stp	x21, x22, [sp, #-16]!
	stp	x19, x20, [sp, #-16]!
	stp	x17, x18, [sp, #-16]!
	stp	x15, x16, [sp, #-16]!
	stp	x13, x14, [sp, #-16]!
	stp	x11, x12, [sp, #-16]!
	stp	x9, x10, [sp, #-16]!
	stp	x7, x8, [sp, #-16]!
	stp	x5, x6, [sp, #-16]!
	stp	x3, x4, [sp, #-16]!
	stp	x1, x2, [sp, #-16]!
	mrs	x1, esr_el1
	mrs	x2, elr_el1
	stp	x2, x0, [sp, #-16]!
	mov	x0, sp
	ret

_exception_exit:
	ldp	x2, x0, [sp],#16
	msr	elr_el1, x2
	ldp	x1, x2, [sp],#16
	ldp	x3, x4, [sp],#16
	ldp	x5, x6, [sp],#16
	ldp	x7, x8, [sp],#16
	ldp	x9, x10, [sp],#16
	ldp	x11, x12, [sp],#16
	ldp	x13, x14, [sp],#16
	ldp	x15, x16, [sp],#16
	ldp	x17, x18, [sp],#16
	ldp	x19, x20, [sp],#16
	ldp	x21, x22, [sp],#16
	ldp	x23, x24, [sp],#16
	ldp	x25, x26, [sp],#16
	ldp	x27, x28, [sp],#16
	ldp	x29, x30, [sp],#16
	eret

	.section .rodata
.error:
	.string "Terminated by exception.\n"

	.text
	.align 4
	.global __start
__start:
	/* Installs a table of exception vectors to catch and handle all
	   exceptions by terminating the process with a diagnostic.  */
	adr	x0, vector_table
	msr	vbar_el1, x0

	/*
	 * Enable FP registers. The standard C pre-amble will be
	 * saving these and A-profile compilers will use AdvSIMD
	 * registers unless we tell it not to.
	*/
	mrs	x0, cpacr_el1
	orr	x0, x0, #(3 << 20)
	msr	cpacr_el1, x0

	/* Page table setup (identity mapping). */
    bl mmu_on

	/* Setup some stack space and enter the test code.
	 * Assume everthing except the return value is garbage when we
	 * return, we won't need it.
	 */
	adrp	x0, stack_end
	add	x0, x0, :lo12:stack_end
	mov	sp, x0
	bl	main

	/* pass return value to sys exit */
	mov    x1, x0
	ldr    x0, =0x20026 /* ADP_Stopped_ApplicationExit */
	stp    x0, x1, [sp, #-16]!
	mov    x1, sp
	mov    x0, SYS_EXIT
	semihosting_call
	/* never returns */

	/*
	 * Helper Functions
	*/

	/* Output a single character to serial port */
	.global __sys_outc
__sys_outc:
	stp x0, x1, [sp, #-16]!
	/* pass address of c on stack */
	mov x1, sp
	mov x0, SYS_WRITEC
	semihosting_call
	ldp x0, x1, [sp], #16
	ret

	.data
	.align	12
stack:
	.space 0x4000000, 0
stack_end:
