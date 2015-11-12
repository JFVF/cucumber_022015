#temperatureConversor

#function to converse Celsius to Fahrenheit

def celsiusToFahrenheit(celsius)
	celsius = celsius.to_f
	((9*celsius)/5)+32
end

def fahrenheitToCelsius(fahrenheit)
	fahrenheit = fahrenheit.to_f
	celsius = (5*(fahrenheit-32))/9
end

#celsius 0 => 32
print("Enter the celsius: ")
celsius = gets.chomp
puts(celsiusToFahrenheit(celsius))

#fahrenheit 32 => 0
print("Enter the fahrenheit: ")
fahrenheit = gets.chomp
puts(fahrenheitToCelsius(fahrenheit))
