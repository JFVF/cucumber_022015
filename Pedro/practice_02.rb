=begin	
What I've made is learn about that a expresion under the next structure "#{}"
is not considered a string and whatever contained inside is interpreted by the ruby interpreter.
=end

test1

operation1 = 25 + 30 / 6
operation2 = 100 -25 * 3 % 4
puts 'i will now count my fruits'
puts "bananas: #{test1}"
puts "apples: #{operation2}"


operation3 = 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "Now I'll count the potato:"
puts operation3


operation4 = 3 + 2 < 5 - 7
puts "Is it true that 3 + 2 < 5 - 7"
puts operation4


operation5 = 3 + 2
operation6 = 5 + 7

puts "What is 3 + 2 ? it is #{operation5}"
puts "What is 5 + 7 ? it is #{operation6}"