=begin
Considered your previous script of convert seconds in minutes 
and seconds in hours :

Ask from prompt the value of the seconds

Perform the calculation of minutes and hours into one function, 
return both values.

Print the values of the variables.
=end

def convert_seconds_to
	puts 'Insert time in seconds:'
	seconds = gets.chomp.to_i

	minutes = seconds / 60
	hours = seconds / 3600
	
	return minutes, hours
end

value_minutes, value_hours = convert_seconds_to
puts "The value in minutes is: #{value_minutes}"
puts "The value in hours is: #{value_hours}"
