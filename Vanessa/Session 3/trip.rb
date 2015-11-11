=begin
Write 1 method that prints a passenger name ,
a destination city and the price of ticket in dollars.

The name should be received from the user

If no destination is defined the value by default should be CBBA.

The price of the ticket should be received by user, 
and the transformation to dollars should be returned from the method. 
It should be  float (E.g 150.25)

Perform the calculation using variables, to return the value don’t use return word
When you call the method, don’t use parenthesis

After call the method don’t forget to print the value returned
=end

def calculate_trip(destination = 'CBBA')
	puts 'Insert name of the passanger:'
	name = gets.chomp
	puts 'Insert price of the ticket'
	price = gets.chomp.to_f
	dollar_price = price / 6.9

	puts "The name of the passanger is: #{name}"
	puts "The destination is: #{destination}"
	puts "The price of the ticket is: #{dollar_price}"
end

calculate_trip
# calculate_trip 'LP' 

