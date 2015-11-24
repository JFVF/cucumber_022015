########################################################################
# 1. Create a class with two methods
# method 1:
# No arguments defined
# Should ask to the user the number of elements in the array
# According the value inserted ask for each value of the array and push it in a new array
# Return the array
# method 2
# Should receive 1 argument (the array returned in method 1)
# should print the array
# 2. Instance the class and call to each method in order to interact with them. Consider that method one shodul return the value that need to be used in second method.
########################################################################


class Finalpractice
  
  def array
  	alpha = Array.new
  	puts "Number of elements of the array: "
  	array_lenght = gets.chomp.to_i
  	for pos in 1..array_lenght
  		puts "Insert Element: [#{pos}]"
  		element = gets.chomp
  		alpha.push element
  	end
  	return alpha
  end
  
  def print alpha
 	puts "Array is: "
 	p alpha
  end
end

arr = Finalpractice.new
array = arr.array
arr.print array

