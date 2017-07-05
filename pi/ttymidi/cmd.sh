killall ttymidi
ttymidi -s /dev/ttyAMA0 -b 38400 -v &
sleep(1)
aconnect 128 14
