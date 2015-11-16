class PArray
	def define
		print "Enter elements number for array: "
		num_elements = gets.chomp.to_i
		array = Array.new(num_elements) 
		num_elements.times do |element|
			print "Enter element value> "
			array[element - 1] = gets.chomp
		end
		return array
	end

	def print_array
		array = define
		puts array.inspect
	end
end

parray = PArray.new
parray.print_array