#conversor from seconds to minutes and hours

def convertSecondsToMinutesAndHours(seconds)
	seconds = seconds.to_i
	
	minutes = seconds/60
	hours = seconds/3600

	return minutes,hours
end

print "Enter the quantity of seconds to be converted to minutes and hours: "
seconds = gets.chomp

minutes,hours = convertSecondsToMinutesAndHours seconds

puts "The minutes is: #{minutes}"
puts "The hours is: #{hours}"

