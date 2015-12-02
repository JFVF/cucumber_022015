=begin
date 11 11 2015
Considered your previous script of convert seconds in minutes and seconds in hours :
Ask from prompt the value of the seconds
Perform the calculation of minutes and hours into one function, return both values
Print the values of the variables.
=end

def min_hour(mySeconds)
	convet_aux=60
	my_min = mySeconds.to_f  / convet_aux
	my_hour=my_min  / convet_aux.to_f
	return  my_min,  my_hour
end
#puts 'Give me your seconds?'
#var_sec = gets.chomp.to_f
#value_min, value_hour = min_hour(var_sec)
#puts "Values = #{value_min}, Value hour= #{value_hour }"

def test_block
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test_block {puts "You are in the block"}
#block with parameter
value_1 = 10  
5.times do | value_2  |
value_1 = value_2 +2  

puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 
#mixin multi inheritance
module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
