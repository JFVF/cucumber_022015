#blockExample2

value_1 = 10  

#different values since this is inside of the cycle "block"
5.times do | value_1 |  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 
