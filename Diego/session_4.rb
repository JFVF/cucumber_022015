#def multiple_return_sintaxis(arg1)
#   calculation_1 = arg1 * 100
#   calculation_2=  arg1 / 100
#   return calculation_1 , calculation_2
#end
#value_added, value_divided = multiple_return_sintaxis(25)
#puts “Value Added = #{value_added}, Value divided= #{value_divided }"


=begin
def conv(sec)
	seconds = sec.to_f
	minutes = seconds / 60
	hours = minutes / 60
	return seconds, minutes, hours
end

puts "Seconds: "
sec = gets.chomp
secs, mins, hor= conv(sec)
puts "seconds = #{secs}, minutes = #{mins}, horurs = #{hor}"



def test_block
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
test_block {puts "You are in the block"}



value_1 = 10  
5.times do | value_1 |  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 


value_1 = 10  
5.times do | value_2 |
value_1 = value_2  
puts " value_1 inside the block: #{value_1 }"  
end  
  
puts " value_1 outside the block: #{value_1 }" 
=end

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
