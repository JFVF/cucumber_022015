#Methods that prints passenger, destination city and the price of ticket

=begin
	Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
	The name should be received from the user
	If no destination is defined the value by default should be CBBA.
	The price of the ticket should be received by user, and the transformation to dollars should be returned from the method. It should be  float (E.g 150.25)
	Perform the calculation using variables, to return the value don’t use return word
	When you call the method, don’t use parenthesis
	After call the method don’t forget to print the value returned
=end


def ticket (passengerName, destinationCity = "CBBA")
	ticketInBs = getPrice destinationCity

	ticketInDollar = currencyConversor ticketInBs

	puts "Ticket's details: \n\tPassenger: #{passengerName}
							\n\tDestination: #{destinationCity}
							\n\tPrice in dollars: #{ticketInDollar} "
end

#method conversor
def currencyConversor bolivians
	#value of one dolar in bolivians
	oneDolarValue = 6.96
	totalDolar = (bolivians/oneDolarValue).to_f
end

#method that returns the price based on the destination city
def getPrice (destinationCity)
	ticketInBs = 0

	case destinationCity.upcase
	when "CBBA"
		ticketInBs = 1000
	when "SCZ"
		ticketInBs = 1500
	when "LPZ"
		ticketInBs = 400
	else
		puts "City #{destinationCity} doesn't exist in the list."
	end

	return ticketInBs
end

puts "Testing without destination city"
print "Enter the passenger name:"
passengerName = gets.chomp

#invoking the method without specifying the destination city
ticket passengerName

puts "*******************************"
puts "Testing with destination city"
print "Enter the passenger name:"
passengerName = gets.chomp

print "Enter the destination city:"
destinationCity = gets.chomp

#invoking the method specifying the destination city
ticket passengerName, destinationCity
