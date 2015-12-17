puts "type your name please..."
names = gets.chomp
puts "hello #{names} how are yo today"

=begin
commented code
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
hours = 24
converted = age * months * days * hours
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


puts "\ntype passenger name"
name = gets.chomp.to_s
puts "type destination city"
destination = gets.chomp.to_s
puts "type ticket price"
price = gets.chomp.to_f

def getPassengerInformation(passengerName = "", destinationCity = "", ticketPrice = 0.0)
dolarValue = 6.97
	if destinationCity.length == 0
		destinationCity = "CBBA"
    end
	
convertedTickedPrice = ticketPrice / dolarValue
puts "\n Name: #{passengerName}\n Destination City: #{destinationCity}\n Price: #{convertedTickedPrice} $"
end

getPassengerInformation name,destination, price

puts "\ntype seconds"
secondValue = gets.chomp
def calculate (seconds = 0)
 hour = 60
 minute = 60
 calculatedHours = seconds.to_i/(hour*minute)
 calculatedMinutes = seconds.to_i/60
 return calculatedHours, calculatedMinutes 
end

#call calculate method
puts "\n#{calculate secondValue}"