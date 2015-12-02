=begin 

Author: Dante

1. Create a class with two methods
method 1:
No arguments defined
Should ask to the user the number of elements in the array
According the value inserted ask for each value of the array and push it in a new array
Return the array
method 2
Should receive 1 argument (the array returned in method 1)
should print the array
2. Instance the class and call to each method in order to interact with them. Consider that method one shodul return the value that need to be used in second method.
=end


puts "********************"
puts "practice Arrays..."
puts "********************"

class ClassArray
  
  def method_1

    puts "please provide the number of elements for the array: "
    number_elements=gets.chomp.to_i
    i=0
    array=[]
    while i < number_elements  do
    puts("please insert value for position #{i}" )
    value = gets.chomp
    array.push value
    i +=1
    end
    return array
  end

  def method_2 (array)
    puts "the array is: #{array}"
  end
end


array_practice = ClassArray.new
arrayValues = array_practice.method_1
array_practice.method_2 arrayValues
