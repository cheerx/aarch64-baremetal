ENTRY(__start)

SECTIONS
{
    /* virt machine, RAM starts at 1gb */
    . = (1 << 30);
    .text : {
        *(.text)
    }
    .rodata : {
        *(.rodata)
    }
    /* 64M from start is for code */
    . = ((1 << 30) + (1 << 26));
    /* align r/w section to next 2mb */
    . = ALIGN(1 << 21);
    .data : {
        *(.data)
    }
    .bss : {
        *(.bss)
    }
    /DISCARD/ : {
        *(.ARM.attributes)
    }
}
