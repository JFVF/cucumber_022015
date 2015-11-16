=begin
Example of local variables
=end

def test_local_variable
	value = 5
	another_value = 10
	addition_of_values = value + another_value
	puts addition_of_values

	# Prints the local variables of the method
	puts local_variables
end

test_local_variable
# puts value # This line will give an error

puts '*************************'

def test_local_variable
	$value = 5
	another_value = 10
	addition_of_values = $value + another_value
	puts addition_of_values

	# Prints the local variables of the method
	puts local_variables
end

test_local_variable
puts $value # Now it is possible to print the value of "$value"