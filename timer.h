#ifndef TIMER_H
#define TIMER_H

#include <stdint.h>

#define GICD_BASE       (0x08000000)
#define GICD_CTLR       0x0
#define GICD_ISENABLERn 0x100

#define GICC_BASE       (0x08010000)
#define GICC_CTLR       0x0
#define GICC_IAR        0xC
#define GICC_EOIR       0x10

#define TIMER_PERIOD    100

static inline uint32_t readl(uint64_t addr)
{   
    return *((uint32_t *)addr);
}

static inline void writel(uint32_t val, uint64_t addr)
{   
    *((uint32_t *)addr) = val;
}

void timer_gic_init(void);
void set_physical_timer(uint32_t timeout_ms);

#endif /* TIMER_H */
