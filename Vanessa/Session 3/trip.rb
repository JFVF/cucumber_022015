def calculate_trip(destination = 'CBBA')
	puts 'Insert name of the passanger:'
	name = gets.chomp
	puts 'Insert price of the ticket'
	price = gets.chomp.to_f
	dollar_price = price / 6.8

	# name, destination, dollar_price
	# name
	puts "The name of the passanger: #{name}"
	puts "The destination is: #{destination}"
	puts "The price of the ticket is: #{dollar_price}"
end
# calculate_trip
calculate_trip 'LP'

# trip = calculate_trip
# puts "Name of the passager #{trip[0]}"
# puts "Name of the passager #{trip[1]}"
# puts "Name of the passager #{trip[2]}"