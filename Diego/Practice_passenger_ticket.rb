###########################################################################
#This method prints a passenger name, destination city 
#and the price of ticket in dollars
# by Diego Claure
###########################################################################

#def ticket(name, dest="CBBA", price)
def ticket(name, dest, price)
	puts "Ticket Details:" 
	puts "#################################################################"
	ticket_val = "Name: #{name.chomp}" + "\n" "Destination: #{dest}" + "\n" "Price ($us): #{price.to_f/6.96} " + "\n"
end

puts "Name?: "
name = gets
puts "Price (Bs)?: "
price = gets
dest = "CBBA"

puts ticket name, dest, price
