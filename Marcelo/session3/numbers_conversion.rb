#convert to integer

print "Give me a number: "
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{ bigger }"


#convert to float
print "Give me a floating number: "
number = gets.chomp.to_f
bigger = number * 100.0
puts "A bigger number is #{ bigger }"
