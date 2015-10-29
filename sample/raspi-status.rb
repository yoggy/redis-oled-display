#!/usr/bin/ruby
#
# display.rb - sample script for redis-oled-display.c
#
# how to use
#   $ sudo gem install redis
#   $ ruby display.rb
#
require 'redis'

r = Redis.new

count = 0

loop do
  r.set "oled:0", `hostname`.chomp + " status" + (count % 2 == 0 ? "." : "")
  r.set "oled:1", Time.now.strftime("%Y/%m/%d %H:%M")
  r.set "oled:2", `LANG=C /sbin/ifconfig | grep -v 127.0.0.1 | grep inet | awk '{print $2}' | sed -e 's/addr://'`
  
  count += 1
  sleep 1
end
