#Getter and setter

class Item
  
  attr_accessor :item_name
  #attr_writer :item_name
  def initialize(quantity)
    
    @quantity = quantity
  end
 
end

item = Item.new(1)
item.item_name = "other"
puts item.item_name


#practice setter and getter and accesor..

puts "********************"
puts "practice setter and getter and accesor.."
puts "********************"

class Person
  
  attr_writer :name 
  attr_reader :greet
  attr_accessor :message
 
  def greetings
      @greet = "Hello "  + @name
  end

end

test = Person.new 
puts test.name = "New Name"
test.greetings
puts test.greet
test.message= "message to print"
puts test.message




puts "********************"
puts "Arrays.."
puts "********************"
nums = [1, 3.0, "something"]
puts nums[1]
puts nums.last
puts nums[-1]
puts nums.length
nums2 = %w{new other test more}
puts nums2[1]

my_array = [1,2,5,7,11]
puts my_array 
puts my_array.inspect
p my_array


puts "********************"
puts "Practice Arrays.."
puts "********************"


class Practice

def create_array
alpha = Array.new
puts "how many elements will the array have?"
array_lenght = gets.chomp.to_i
array_lenght.times do |position|
  puts "Please insert element[#{position}]"
  element = gets.chomp
  alpha.push element
end
return alpha
end

def print_array_result alpha
puts "Your array is :"
p alpha
end

end

array_practice = Pactice.new
array = array_practice.create_array
array_practice.print_array_result array
