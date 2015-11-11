#temperatureConversor

#function to converse Celsius to Fahrenheit

def celsiusToFahrenheit(celsius)
	((9*celsius)/5)+32
end

def fahrenheitToCelsius(fahrenheit)
	celsius = (5*(fahrenheit-32))/9
end

#celsius 0 => 32
print("Enter the celsius: ")
celsius = gets.chomp.to_f
puts(celsiusToFahrenheit(celsius))

#fahrenheit 32 => 0
print("Enter the fahrenheit: ")
fahrenheit = gets.chomp.to_f
puts(fahrenheitToCelsius(fahrenheit))
