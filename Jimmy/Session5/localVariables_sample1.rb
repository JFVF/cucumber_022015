#LocalVariables

def test_local_variables
   value = 5
   another_value = 10
   addition_of_values = value + another_value 
   puts addition_of_values 
end

test_local_variables #prints the local variables
puts value #error since the value variable doesn't exist

puts test_local_variables #prints the results from the method