=begin
Array examples
=end

nums = [1, 3.0, 'something', 'something else']
puts 'Third element:'
puts nums[2]

puts 'Last element:'
puts nums[-1]

puts 'Last element:'
puts nums.last

puts 'First element:'
puts nums.first
puts "\n"

mystuff = ['samsung', 'nokia', 'iphone']
puts 'Length of mystuff'
puts mystuff.length

otherstuff = %w{samsung nokia iphone}
puts 'Length of otherstuff'
puts otherstuff.length
puts "\n"

my_array = [1,2,5,7,11]
puts 'puts my_array'
puts my_array
puts 'puts my_array.inspect'
puts my_array.inspect
puts 'p my_array'
p my_array
puts "\n"

puts 'intersection'
puts [1,2,3] & [3,4,5]
puts 'addition'
puts [1,2,3] + [3,4,5]
puts 'substraction'
puts [1,2,3] - [3,4,5]
puts "\n"

