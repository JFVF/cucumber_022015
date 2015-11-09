=begin
Example of the method gets and gets.chom
=end

puts 'What is your name?'
# name = gets
name = gets.chomp
puts 'Hello ' + name + '!!How are you?'

puts 'Some Test'.chomp(' Test')
puts "Some Test\r\n".chomp
puts "\tRobert Martin\r\n".strip