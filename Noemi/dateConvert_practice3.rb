#!/usr/bin/ruby -w
puts "RUBY CLASS"
=begin 
Author: Noemi Guzman
date:11/09/2015
=end

time = Time.new
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59

#! convert
min_hour=60
sec_min_hour=min_hour**2

total_hours = time.hour + (time.min / min_hour) +  time.sec / sec_min_hour # => total hours, contains the hours, the minutes and seconds convered to hour
puts "Current hour: #{sprintf('%.2f', total_hours)}"
#s = "%8.3f" % total_hours
#puts s
 

total_min = (time.hour * min_hour) + time.min + (time.sec/min_hour)   # => total minutes, contains the hours,and seconds convered to minutes
puts "Current minutes: #{sprintf('%.2f', total_min)}"


total_sec = (time.hour/sec_min_hour) + (time.min*min_hour)+ time.sec   # => total seconds, contains the minutes and hours convered to seconds
puts "Current seconds: #{sprintf('%.2f', total_sec)}"

puts "Current time"
now = Time.now           # Current time
puts now

puts "1200 seconds ago"
past = now - 120         # 1200 seconds ago. Time - number => Time
puts past

puts "120 seconds from now"
future = now + 120        # 120 seconds from now Time + number => Time
puts future

diff = future - now      # => 120  Time - Time => number of seconds
puts diff