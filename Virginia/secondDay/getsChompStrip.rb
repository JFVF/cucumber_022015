
puts "What is your name?"
variable_name = gets
puts "Hi #{variable_name} !! How are you today?"

puts "What is your name22?"
variable_name2 = gets.chomp
puts "Hi #{variable_name2} !! How are you today22?"

#chomp vs strip
#chomp remueve todo al final del string, y ademas quita una cadena  de acuerdo a un criterio
#Strip  remueve todo al inicio y al final del string
puts "Some Test".chomp(' Test') # => “Some"
puts "\tSome Test\r\n".chomp # => "Some Test"
puts "\tRobert Martin\r\n".strip # => "Robert Martin"


