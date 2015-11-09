=begin
Example of different types of return
=end

def celcius_to_fahrenheit(celcius)
	fahrenheit = (((9 * celcius.to_f) / 5) +32)
end

def fahrenheit_to_celcius(fahrenheit)
	celcius = (5 * (fahrenheit.to_f - 32)) / 9
	return celcius
end

puts 'C - F'
# puts celcius_to_fahrenheit(15)
puts celcius_to_fahrenheit('fsdf')
puts 'F - C'
puts fahrenheit_to_celcius(65.2)