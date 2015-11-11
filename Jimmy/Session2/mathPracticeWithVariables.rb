#MathPracticeWithVariables

=begin
	This scripts shows the math operations, how to specify them along with 
	the string and without strings
	Also, using variables
=end


totalBananas = 25 + 30 / 6
totalApples = 100 - 25 * 3 % 4
totalPotatos = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts "I will now count my fruits:"

puts "Bananas:  #{totalBananas}"
puts "Apples: #{totalApples}"

puts "Now I will count the potato:"
puts totalPotatos

puts "Total tomatos: (an error should displayed because the totalTomatos is not defined)"
puts totalTomatos

puts "Is it true that 3 + 2 < 5 - 7?"
puts (3 + 2) < (5 - 7)

puts "What is 3 + 2? It is #{3 + 2}"
puts "What is 5 - 7? It is #{5 - 7}"
