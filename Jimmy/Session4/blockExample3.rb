#blockExample3

value_1 = 10  
value_3 = 25

5.times do | value_2 |
	value_1 = value_2  
	puts " value_1 inside the block: #{value_1 }"
  	puts " value_1 inside the block: #{value_3 }"
end  
  
puts " value_1 outside the block: #{value_1 }" 
