#array practice 2

class ArrayPractice1

	def set_array
		array = []
		print "Enter size of the array: "
		length = gets.chomp.to_i

		length.times do 
			print "Enter the array value: "
			value = gets.chomp
			array.push(value)
		end
		return array
	end

	def prints_array array
		puts array
	end

end

arrayp = ArrayPractice1.new
array = arrayp.set_array
puts array.length
arrayp.prints_array array