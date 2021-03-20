#!/bin/bash
DISP() {
    xrandr --newmode "3440x1440_60.00"  419.11  3440 3688 4064 4688  1440 1441 1444 1490  -HSync +Vsync
    xrandr --addmode Virtual1 "3440x1440_60.00" # instead of Virtual1 see what displays are displayed in xrandr -q
    xrandr --output Virtual1 --mode "3440x1440_60.00"
}

