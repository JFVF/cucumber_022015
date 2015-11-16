
###############first exercise!!!
class Circle
  def calculate_print_area(radius)
  	area = radius.to_f * 2 * Math::PI
    puts "The radius of circle is: #{radius}, and its area is: #{area}"
  end

  def calculate_print_perimeter(radius)
  	area = radius.to_f * radius.to_f * Math::PI
    puts "The radius of circle is: #{radius}, and its perimeter is: #{area}"
  end
end
=begin
puts "Enter a radius value:"
var_radius = gets.chomp
circle1= Circle.new
circle1.calculate_print_area"#{var_radius}"
circle1.calculate_print_perimeter"#{var_radius}"
=end

###############second exercise!!!
def test_local_variables
   $var_global	=33
   value = 5
   another_value = 10
   addition_of_values = value + another_value 
   puts addition_of_values 
   puts local_variables  #imprimir todas las variables locales
end
=begin
test_local_variables
puts $var_global
puts value
=end

###############Third exercise!!! using initialize
class Customer
   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end
   def display_details()
      puts "Customer id #{@cust_id}"
      puts "Customer name #{@cust_name}"
      puts "Customer address #{@cust_addr}"
    end
end

# Create Objects
cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
=begin
# Call Methods
cust1.display_details()
cust2.display_details()
=end


###############fouth excercise!!! using global variables
=begin
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
=end


###############  five excercise!!! using global variables

class Polygon
  @@sides = 10
  def self.sides  ## autoinizializando
    @@sides
  end
end

puts Polygon.sides   # it is similar than  Polygon.new.sides



class Triangle < Polygon  ##herencia simple
  @@sides = 3              # se esta alterando el valor @@sides = 10
end

puts Triangle.sides 
puts Polygon.sides


class Rectangle < Polygon
  @@sides = 4
end

puts Polygon.sides




