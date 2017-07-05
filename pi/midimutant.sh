#!/bin/bash

killall ttymidi
killall midimutant
sleep 1
ttymidi -s /dev/ttyAMA0 -b 38400 -v &
sleep 1
aconnect 14 128:1
./code/midimutant/qt/midimutant
