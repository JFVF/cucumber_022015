#   to_f convert to flotante
=begin
 Ruby and cuccumber class
 Author Noemi Guzman
 Date 10 11 2015
=end

def my_to_f(my_string)
	
	puts "\n Before to convert ..  " + my_string.to_s
	puts "   its floating number is..  " +  my_string.to_f.to_s

end
my_to_f("2015")
my_to_f "abcd"
my_to_f("60seconds")
my_to_f "year2015"
my_to_f("11 10 2015")
=begin
Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
=end
def print_passenger_detail(name , price,destination="CBBA")

	puts "\n Passenger Detail\n"
	puts "Passenger name :" + name.to_s
	puts "Destunation city:" + destination.to_s
	#puts "Price:" + "%8.2f" % price.to_f.to_s + "\n"
	puts "Price:" +  price.to_f.to_s + "\n"
	
end

def to_dollar(my_price)

	(my_price * 6.86).round 2
	
end

def get_passenger_detail()
	#The name should be received from the user
	puts 'Give me your name?'
	var_name = gets.chomp.to_s
	# If no destination is defined the value by default should be CBBA.
	puts 'Where would you go?'
	var_des = gets.chomp.to_s
	# The price of the ticket should be received by user, 
	# and the transformation to dollars should be returned from the method. It should be  float 
	puts 'What is the price?'
	var_price = gets.chomp.to_f
	var_price = to_dollar var_price
		if var_des.strip.length == 0
			print_passenger_detail var_name,var_price
		else
			print_passenger_detail var_name,var_price,var_des.strip.chomp 
		end
	
end
get_passenger_detail