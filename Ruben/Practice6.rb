class Item
  attr_reader :item_name
  attr_writer :item_name

  def initialize(quantity)
 @quantity = quantity
  end
  
end

item = Item.new(1)
puts item.item_name = "radio"

puts "\n"

class Person
  attr_reader :greet
  attr_writer :name
  attr_accessor :specialGreet
     
  def greet
    @greed = "Hi #{@name}"
  end

  def specialGreet
    @specialGreed = "#{@name} have a nice day"
  end
end

person1 = Person.new
person1.name = "Ruben"
puts person1.greet
puts person1.specialGreet

#####################################################

class ArrayPractice

  def createArray
  newArray = Array.new
  puts "insert array lenght Please"
  arrayLenght = gets.chomp.to_i
  for i in 0..arrayLenght-1
    #puts "Value of local variable is #{i}"
    puts "Insert element Nro #{i+1}"
    element = gets.chomp
    newArray.push element
  end
  return newArray
  end

  def printArray(newArray)
    puts "Elements in array: " + newArray.to_s
  end
end

newArray = ArrayPractice.new
array = newArray.createArray
newArray.printArray array