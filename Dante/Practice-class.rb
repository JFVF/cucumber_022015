=begin
Practice..
Create a ruby class with including two methods :
	One method to calculate and print the area of a circle :
radius * 2 * PI
	One method to calculate and print the perimeter 	of a circle 
radius * radius * PI
Call to the methods in order to see the result printed
=end
 
class Calculation
	def AreaCircle (radios)
		puts "the Area of the circle is: #{radios.to_f*2*Math::PI}"
	end
	def Permiter(radios)
		puts "the perimeter is: #{radios.to_f*radios.to_f*Math::PI}"
	end
end

# Create Objects
cal=Calculation.new
puts "Please enter the value for the radio:"
valueRadios = gets
# Call Methods
cal.AreaCircle(valueRadios)
cal.Permiter(valueRadios)



#Local variables
puts "***************************"
def test_local_variables
   $value = 5
   another_value = 10
   addition_of_values = $value + another_value 
   puts addition_of_values 
   puts local_variables

end

test_local_variables
puts $value


#other
puts "****************************"

class Customer
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @@cust_addr=addr
   end
   def display_details()
      puts "Customer id #{@cust_id}"
      puts "Customer name #{@cust_name}"
      puts "Customer address #{@@cust_addr}"
    end
end

# Create Objects
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")

# Call Methods
cust1.display_details()
cust2.display_details()


# ************** ruby global variables
puts "******************"
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
puts global_variables.include? :$example_of_global



# **************** ruby variables
puts "******************"

class Polygon
  @@sides = 10
  def self.sides
    @@sides
  end
end

puts Polygon.sides

puts "new classes ******"

class Triangle < Polygon
  @@sides = 3
end

puts Triangle.sides 
puts Polygon.sides


class Rectangle < Polygon
  @@sides = 4
end

puts Polygon.sides



=begin

Using class variables :
Create a class named father
 father should have some amount of money. 
Add 3 different child classes that are going to take some of the money.
Print the amount that each child is taking
Print the amount of money that Father have at the end.
	
=end

class Father
	@@money = 300

	def self.showMoney
		@@money
	end

end

puts "father has: #{Father.showMoney}$"

class Son1  < Father
	$takeMoney = 30
	@@money = @@money - $takeMoney
end

class Son2  < Father
	$takeMoney1 = 50
	@@money = @@money - $takeMoney1
end

class Son3  < Father
	$takeMoney2 = 60
	@@money = @@money - $takeMoney2
end

#printing the amount that each child is taking
puts "son 1 is taking: #{$takeMoney}$"
puts "son 3 is taking: #{$takeMoney1}$"
puts "son 2 is taking: #{$takeMoney2}$"
#printing Print the amount of money that Father have at the end.
puts "father now has: #{Father.showMoney}$"



