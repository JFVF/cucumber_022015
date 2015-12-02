=begin
Local Variables
A variable whose name begins with a lowercase letter (a-z) or underscore (_) is a local variable or method invocation.
A local variable is only accessible from within the block of its initialization
=end

def test_local_variables
   $value = 5
   another_value = 10
   addition_of_values = $value + another_value 
   puts addition_of_values 
   puts local_variables #list variables locales
end

test_local_variables
puts $value

#* What happened when insert in the method the sentence : puts local_variables
