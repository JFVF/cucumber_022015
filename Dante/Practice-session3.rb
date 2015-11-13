#functions Ruby Optional argument values
#Author: Dante

puts "****************"

def travel(name, price, destination="CBBA")
  var = "Name: #{name.chomp}, Destination: #{destination}, Price: #{price.to_f/6.96} $us"
end

puts "Please enter your name"
name = gets
puts "Please the price (bs) of the ticket"
price = gets

puts travel name, price


#Ruby multiple return
#Author: Dante

puts "****************"

def convert(seconds)
   second = seconds.to_i
   minute = second / 60.0
   hour=  minute / 60.0
   return second, minute, hour
end


puts "Please the seconds"
seconds = gets

value_seconds, value_minutes, value_hours = convert(seconds)
puts "Value seconds = #{value_seconds}, Value minutes = #{value_minutes}, value hours = #{value_hours}"
