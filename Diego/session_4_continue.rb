##Calculate and print area and perimeter of a circle
# class Circle_class
#   def area(radius)
#     ar = radius.to_f * 2 * Math::PI
#     puts "Area: #{ar}"
#   end
#     def perimeter(radius)
#       per = radius.to_f * radius.to_f * Math::PI
#     puts "Perimeter: #{per}"
#   end
# end

# puts "Enter radius: "
# radius = gets.chomp
# Circle_class.new.area(radius)
# Circle_class.new.perimeter(radius)

###Local variables and global variables
# def test_local_variables
#    $value = 5
#    another_value = 10
#    addition_of_values = $value + another_value 
#    puts addition_of_values 
#    # puts local_variables
# end

# test_local_variables
# # puts $value
# puts local_variables

####VAriables de instancia
# class Customer
#    def initialize(id, name, addr)
#       @cust_id=id
#       @cust_name=name
#       @cust_addr=addr
#    end
#    def display_details()
#       puts "Customer id #{@cust_id}"
#       puts "Customer name #{@cust_name}"
#       puts "Customer address #{@cust_addr}"
#     end
# end

# # Create Objects
# cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
# cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
# cust3=Customer.new("3", "William Wallace", "Sunset blvd, Florida")

# # Call Methods
# cust1.display_details()
# cust2.display_details()
# cust3.display_details()

##------------------------------------------------------------
####Variables Globales
# $example_of_global= 10
# module ModuleTest        
#     puts "Inside module"
#     puts $example_of_global
# end


# def method_test
#     puts "Inside method"
#     puts $example_of_global
# end


# class Some_test
#     puts "Inside class"
#     puts $example_of_global
# end 

# method_test 
# puts "Inside toplevel"
# puts $example_of_global
# puts global_variables.include? :$example_of_global


###---------------------------------------------------------------
######Variables de Clase
# class Polygon
#   @@sides = 87
#   def self.sides  #Self es para inicializar la clase
#     @@sides
#   end
# end

#  puts Polygon.sides

# class Triangle < Polygon
#   @@sides = 3
# end

# puts Triangle.sides 
#  puts Polygon.sides


######Final Practice
class Father
  @@money = 99
  def self.money  #Self es para inicializar la clase
    @@money
  end
end

 puts Father.money

class Luke < Father
   @@lm = 33
  @@money = @@money - @@lm
  puts "Luke takes #{@@lm}"
end
 puts Luke.money
class Leia < Father
   @@le = 23
  @@money = @@money - @@le
    puts "Leia takes #{@@le}"
end
puts Leia.money
class Anakin < Father
  @@an = 43
  @@money = @@money - @@an
  puts "Anakin takes #{@@an}"
end

# puts Father.money 

 
 puts Anakin.money
