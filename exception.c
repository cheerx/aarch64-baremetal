#include <stdint.h>
#include <minilib.h>

#include "timer.h"

void do_irq(void *pt_regs, uint64_t esr)
{
    uint32_t irq = readl(GICC_BASE + GICC_IAR);

    if((irq & 0x3ff) == 30) {
        set_physical_timer(TIMER_PERIOD);
        ml_printf("%s.%d\n", __FUNCTION__, __LINE__);
    }
    writel(irq, GICC_BASE + GICC_EOIR);
}

void do_sync(void *pt_regs, uint64_t esr)
{
    ml_printf("sync exception\n");
    for (;;);
}
