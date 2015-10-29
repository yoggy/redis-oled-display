redis-oled-display.c
====

Display driver program for Raspberry Pi 0.96inch LED Display Module

- http://www.seeedstudio.com/depot/Raspberry-Pi-096-OLED-Display-Module-p-2390.html
- http://akizukidenshi.com/catalog/g/gP-09346/

![img01.jpg](img01.jpg)

Setup
----

    $ sudo apt-get install redis-server
    $ sudo apt-get install git-core
    $ mkdir -p ~/work
     
    $ cd ~/work
    $ git clone git://git.drogon.net/wiringPi
    $ cd wiringPi
    $ ./build
     
    $ cd ~/work
    $ git clone https://github.com/redis/hiredis.git
    $ cd hiredis
    $ make
    $ sudo make install
     
    $ sudo ldconfig

Compile & Run
----

    $ cd ~/work
    $ git clone https://github.com/yoggy/redis-oled-display.git
    $ cd redis-oled-display
      
    $ make
    $ sudo ./redis-oled-display

How to use
----

    $ redis-cli set "oled:0" "================"
    OK
    $ redis-cli set "oled:1" "  Redis->OLED   "
    OK
    $ redis-cli set "oled:2" "  Display       "
    OK
    $ redis-cli set "oled:3" "================"
    OK

Copyright and license
----

Copyright (c) 2015 yoggy

Released under the [MIT license](LICENSE.txt)

