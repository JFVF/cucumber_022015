#convert celsius to fahrenheit

def convert_from_celsius_to_fahrenheit(celsius)
	( ( ( 9 * celsius ) / 5 ) + 32 ).round(2)
end

def convert_from_fahrenheit_to_celsius(fahrenheit)
	celsius = ( ( 5 * (fahrenheit - 32)) / 9 ).round(2)
end

def read_keyboard(var_name)
	print "Enter #{ var_name }: "
	return gets.chomp.to_f
end

celsius = read_keyboard("celsius")
result_fahrenheit = convert_from_celsius_to_fahrenheit celsius
puts "#{ celsius } celsius converted to fahrenheit is #{ result_fahrenheit } degrees"

fahrenheit = read_keyboard("fahrenheit")
result_celsius = convert_from_fahrenheit_to_celsius(fahrenheit)
puts "#{ fahrenheit } fahrenheit converted to celsius is #{ result_celsius } degrees"