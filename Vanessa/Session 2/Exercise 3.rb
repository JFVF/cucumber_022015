=begin
Exercise 3

Create a new script 
add variables with numbers and strings. 
Print them as a sentences (like in the previous case)
Add some sentence that perform some calculation using variable names
=end

a = 1
b = 4
puts "The number #{a} is less than #{b}"

c = 'x' * 4 
puts "Repeat x #{c.length} times : #{c}"

y = 'end'
d = 'x' * 4 + y
puts d

speed = nil
time = 3 #seconds
distance = 100 # meters
puts "The velocity is: #{distance / time} m/s"