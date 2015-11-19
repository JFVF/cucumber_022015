class ArrayTest
  def createAndGetArray()
    puts "Enter the number of elements for new array:"
    array_tam = gets.chomp.to_i
    created_array = Array.new

    array_tam.times do | value_1 | 
        puts "Enter value for position:#{value_1} of created array:"
        value = gets.chomp 
        created_array.push(value)
    end 
    return created_array
  end

  def printArray(array)
    puts "Your created array has the following values:"
    p array
  end
end

arrayTest = ArrayTest.new
created_Array = arrayTest.createAndGetArray
arrayTest.printArray(created_Array)
  