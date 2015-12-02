def test_local_variables
   $value = 5
   another_value = 10
   addition_of_values = $value + another_value 
   puts addition_of_values 

   puts local_variables
end

test_local_variables
puts $value
