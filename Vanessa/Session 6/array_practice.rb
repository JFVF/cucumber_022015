=begin
1. Create a class with two methods

method 1:
No arguments defined
Should ask to the user the number of elements in the array
According the value inserted ask for each value of the array 
and push it in a new array
Return the array

method 2
Should receive 1 argument (the array returned in method 1)
should print the array

2. Instance the class and call to each method in order to interact with them. 
Consider that method one shodul return the value that need to be used in second method.

=end

class ArrayPractice

	def initialize
		@array = []
	end

	def create_array
		puts 'Insert the length of the array'
		size = gets.chomp.to_i

		size.times do |position|
			puts "Insert the element number #{position}"
			element = gets.chomp.to_i
			@array.push(element)
		end
		puts "\n"
		@array
	end

	def print_array(array)
		puts 'The array is:'
		puts array.inspect
	end

end

ary = ArrayPractice.new
array = ary.create_array
ary.print_array(array)
