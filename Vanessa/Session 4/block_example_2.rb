=begin
Example of a block sending a parameter
=end

value_1 = 10

5.times do |value_1|
	puts "value_1 inside the block: #{value_1}"
end

puts "value_1 outside the block: #{value_1}"