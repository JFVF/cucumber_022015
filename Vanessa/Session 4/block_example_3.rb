=begin
Example of a block sending multiple parameters
=end

value_1 = 10

# 5.times do |value_2; value_1|
5.times do |value_2|
	value_1 = value_2
	puts "value_1 inside the block: #{value_1}"
end

puts "value_1 outside the block: #{value_1}"