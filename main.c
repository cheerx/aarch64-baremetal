#include <stdint.h>
#include <minilib.h>

#include "timer.h"

int main()
{
    timer_gic_init();
    for (;;);
}
