class CalculateClass
  def initialize
      @PI=Math::PI    
  end

  def calculateCircleArea(radio = 0)
      radio * 2 * @PI
  end

  def calculteCirclePerimeter (radio = 0)
      radio * radio * @PI
  end
end

puts "#{CalculateClass.new.calculateCircleArea 10}"
puts "#{CalculateClass.new.calculteCirclePerimeter 10}"

def test_local_variables
   $value = 5
   another_value = 10
   addition_of_values = value + another_value 
   puts addition_of_values 
   #puts local_variables
end

#test_local_variables
puts $value

class Customer
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts "Customer id #{@cust_id} Customer name #{@cust_name} Customer address #{@cust_addr}\n"
    end
end

# Create Objects
cust1=Customer.new("1", "User1", "address1").display_details()
cust2=Customer.new("2", "User2", "address2").display_details()


$example_of_global= 6
module ModuleTest        
    puts "Inside module"
    puts $example_of_global
end


def method_test
    puts "Inside method"
    puts $example_of_global
end


class Some_test
    puts "Inside class"
    puts $example_of_global
end 

method_test 
puts "Inside toplevel"
puts $example_of_global
puts global_variables.include? :$example_of_global2


class Polygon
  @@sides = 10
  def self.sides
    @@sides
  end
end
puts Polygon.sides

class Triangle < Polygon
  @@sides = 3
end

class Rectangle < Polygon
  @@sides = 4
end


puts Triangle.sides 
#puts Polygon.sides


puts "=================="

class Father
   @@cash = 2000
   def self.cash
      @@cash
   end
end

class Son1 < Father	
   def getMoney(amount = 100)
   @@cash -= amount
   end
end

class Son2 < Father
   def getMoney(amount = 200)
   @@cash -= amount
   end
end

class Son3 < Father
   def getMoney(amount = 500)
   @@cash -= amount
   end
end

puts Father.cash
son = Son1.new
son.getMoney

son2 = Son2.new
son2.getMoney

puts Father.cash

son3 = Son3.new
puts son3.getMoney 1000 