def celsius_in_fahrenheit(celcius)
	return (((9.0 * celcius.to_f) / 5.0) + 32.0)
end

def fahrenheit_in_celsius(fahrenheit)
	(5.0 * (fahrenheit.to_f - 32.0)) / 9.0
end

puts celsius_in_fahrenheit('32')
puts fahrenheit_in_celsius(32)