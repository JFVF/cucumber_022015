#practice session 3, optional parameters
def read_keyboard(var_name)
	print "Enter #{ var_name }: "
	return gets.chomp
end

def calculate_ticket_to_dollars(price)
	price.to_f * 6.96
end

def prints_results(passenger_name, destination = "CBBA", price)
	puts "-------------------------------------"
	puts "passenger name: #{ passenger_name }"
	puts "destination: #{ destination }"
	puts "price: #{ price }"
end

passenger_name = read_keyboard "Passenger Name"
destination = read_keyboard "Destination"
price = read_keyboard "Ticket Price"

# calling method without destination parameter
prints_results passenger_name, calculate_ticket_to_dollars(price)

# calling method without parameters
prints_results passenger_name, destination, calculate_ticket_to_dollars(price)