puts "\ntype seconds"
secondValue = gets.chomp.to_f

def calculate (seconds = 0)
   hour = 60
   minute = 60
   calculatedHours = seconds/(hour*minute)
   calculatedMinutes = seconds/60
   return calculatedHours, calculatedMinutes 
end

#call calculate method
hours, minutes = calculate secondValue
puts "\n#{secondValue} seconds --->> Hours #{hours}, --->>minutes #{minutes}"


def test_block
   puts "-------2"
   yield
   puts "-------3"
   yield
end

test_block {puts "----1"}

puts "============================"
value_1 = 10  
5.times do | value_1 |  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 

puts "=============================\n"
value_1 = 10  
5.times do | value_2; value_1 |
value_1 = value_2  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }"



