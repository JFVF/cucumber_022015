puts "type your name please..."
names = gets.chomp
puts "hello #{names} how are yo today"

=begin
"Some Test".chomp(' Test')
"Some Test\r\n".chomp
"\tRobert Martin\r\n".strip
=end

puts "give me a number"
firstNumber = gets.chomp.to_f
defaultValue = 20
puts result = "Result = #{firstNumber + defaultValue}"

def wellcome (name = "", age = 0)
months = 12
days = 30
converted = age * months * days
puts "\nHI #{name.upcase}"
puts "Your #{age} years is equals to #{converted} hours"
	end

wellcome(names, 25)
wellcome "ruben", 25

def transformCelsius(celsius = 1.1)
fahrenheit = (((9* celsius ) /5) + 32)
return fahrenheit.to_s+" fahrenheit"
	end

puts transformCelsius 37.5

def transformfahrenheit(fahrenheit = 1.1)
((5*(fahrenheit - 32))/9).to_s+" celsius"
	end

puts transformfahrenheit 98