# Midimutant

This repo currently contains a circuit based on [this design posted on Silicon Stuff](http://siliconstuff.blogspot.co.uk/2012/08/serial-port-midi-on-raspberry-pi.html) 
for using the Raspberry Pi built in uart as a midi output.

# Setting up midi on the Raspberry Pi

The files in boot need to go in /boot (probably good idea to compare
with existing rather than copying them over). The relevant part of
config.txt is:


    dtoverlay=pi3-miniuart-bt
    init_uart_clock=39062500
    init_uart_baud=38400
    dtparam=uart0_clkrate=48000000

Build and install ttymidi - this is adapted to allow sysex messages to
pass through correctly.

    $ cd pi/ttymidi
    $ make
    $ sudo make install

# Autostarting Midimutant on Raspberry Pi

Based on LXDE window manager 

1. Copy midimutant.desktop to /home/pi/Desktop 

This tells the window manager how to start the application.

2. Create a local startup for the pi user by copying contents of
  dot-config to .config in /home/pi

3. Copy midimutant.sh to /home/pi 

This is the shell script that starts ttymidi, connects it to the
output alsa midi device and starts midimutant.

