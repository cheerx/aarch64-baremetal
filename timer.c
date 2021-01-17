#include <stdint.h>

#include <minilib.h>

#include "timer.h"

void timer_gic_init(void)
{
    uint32_t value;

    /*打开GIC Distributor总中断*/
    value = readl(GICD_BASE+GICD_CTLR);
    value |= 1;
    writel(value, GICD_BASE+GICD_CTLR);

    /*打开Non-secure physical timer中断，具体可以看GIC-400手册*/
    value = readl(GICD_BASE+GICD_ISENABLERn);
    value |= (1<<30);
    writel(value, GICD_BASE+GICD_ISENABLERn);

    /*打开GIC CPU interface总中断*/
    value = readl(GICC_BASE+GICC_CTLR);
    value |= 1;
    writel(value, GICC_BASE+GICC_CTLR);
}

void set_physical_timer(uint32_t timeout_ms)
{
    /*定时器使用细节可查看ARMv8体系结构手册*/
    unsigned long value, freq, cnt, cmp;

    /*关闭定时器*/
    value = 0;
	asm volatile("msr CNTP_CTL_EL0, %0" : : "r" (value));

    /*计算下次超时时间*/
    asm volatile("mrs %0, CNTFRQ_EL0" : "=r" (freq));
    asm volatile("mrs %0, CNTPCT_EL0" : "=r" (cnt));
    cmp = cnt + (freq/1000)*timeout_ms;
    asm volatile("msr CNTP_CVAL_EL0, %0" :  :"r" (cmp));

    /*打开定时器*/
    value = 1;
    asm volatile("msr CNTP_CTL_EL0, %0" : : "r" (value));
}
