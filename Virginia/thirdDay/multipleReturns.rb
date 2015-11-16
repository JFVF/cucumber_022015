=begin 
=end
def print_value_min_hour(value_second)
    value_min = value_second.to_f/ 60
    value_hour = value_min.to_f/ 60
    return value_min, value_hour
end

puts "Enter a value in seconds:"
var_seconds = gets.chomp

value_min, value_hour = print_value_min_hour"#{var_seconds}"
puts "Value in minutes = #{value_min}, Value in hurs= #{value_hour}"


#####Yield###
## introducir un block , usando la palabra reservada _block

def test_block
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end

test_block {puts "You are in the block"}


######
value_1 = 10  
5.times do | value_1 |  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 


#################A

value_1 = 10  
5.times do | value_2; value_1 | # parametros de bloque  value_2 es como contador
value_1 = value_2  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 

#################B  removing ; value_1 
value_1 = 10  
5.times do | value_2| # parametros de bloque  value_2 es como contador
value_1 = value_2  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 
