#multiple returns - practice
=begin
def calculate_minutes_hours(seconds) 
	minutes = (seconds / 60.0).round(2)
	hours = (seconds / 3600.0).round(2)
	return minutes, hours
end

print "Enter seconds: "
seconds = gets.chomp.to_i
minutes, hours = calculate_minutes_hours seconds

puts "#{ seconds } seconds in minutes are #{ minutes } and in hours are #{ hours }"
=end


# blocks

=begin
def block_01
	puts "inside method"
	yield "hello I'm parameter"
	puts "inside method"
end

block_01 { |something| puts "inside block #{ something }" }
=end



# blocks example 2

=begin
value_1 = 10  
5.times do | value_2 |  
	value_1 = value_2
	puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" =end