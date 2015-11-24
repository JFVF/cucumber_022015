#unless
# a = 5
#  unless a == 4
#    a = 7
#  end
#  print a


#Short-if
# a=5
# puts result = a == 4? a = 7 : a=10
#or
 # puts result = if a == 4 then a = 7 else a=10 end


# Case in Ruby supports a number of syntaxes.
 #  a = 1
 # case 
 # when a < 5 then puts "#{a} is less than 5"    
 # when a == 5 then puts "#{a} equals 5" #WARNING with = 
 # when a > 5 then puts "#{a} is greater than 5" 
 # end

###Ranges 
# a = 1
# case a
#  when 0..4 then puts "#{a} is less than 5"    
#  when 5 then puts "#{a} equals 5" 
#  when 6...10 then puts "#{a} is greater than 5" 
#  else puts "unexpected value #{a} " 
# end


# The ranges can of course have variables

top = 6
for i in 1..top
 puts "hi #{i}"
end
