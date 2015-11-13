# Practice 1
=begin
Author: Dante	
1. Create a ruby file (.rb) that print 7 lines (use print and puts)
2. run the script 
3. Which difference so you see between each other?
4. Put a # (octothorpe, hash, pound) character at the beginning of any line. What did it do?
=end
puts "============="
puts "Practice 1"
# 1. Create a ruby file (.rb) that print 7 lines (use print and puts)
print "Line 1"
puts "Line 2"
print "Line 3"
puts "Line 4"
print "Line 5"
print "Line 6"
puts "Line 4"

# 2. run the script
=begin
E:\Ruby>ruby practice1.rb
Line 1Line 2
Line 3Line 4
Line 5Line 6Line 4	
=end

# 3. 
#difference is that when using puts, the next sentence (printed test), is displayed in a new line

# 4.  Put a # (octothorpe, hash, pound) character at the beginning of any line. What did it do?
# Answer: the line is commented and not considered when the script runs


puts "============="
puts "Practice 2"
# Practice 2
=begin
Author: Dante	
1. Create a script where you can print numbers and math result.
E.g.
puts "I will now count my fruits:"
puts “Bananas:  #{25 + 30 / 6}"
puts “apples: #{100 - 25 * 3 % 4}"
puts "Now I will count the potato:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7
puts "What is 3 + 2? It is #{3 + 2}"
puts "What is 5 - 7? It is #{5 - 7}"

2. Add a multiline comment at the beginning giving a short description of your script.
3. Push your script in your folder.
=end

# 1. Create a script where you can print numbers and math result.
=begin
the following script should display the fruit
and perform some operations	
=end
# Comment - start the script
puts "I will now count my fruits:"
# Comment - display fruits
bananasNumber = 25 + 30 / 6
puts "Bananas:  #{bananasNumber}"
#puts "Bananas:  #{noexists}"
puts "apples: #{100 - 25 * 3 % 4}"

# Comment - display fruits
puts "Now I will count the potato:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7
puts "What is 3 + 2? It is #{3 + 2}"
puts "What is 5 - 7? It is #{5 - 7}"

# print a variable
a = 23
print "value of a =  #{a}" 


puts "============="
puts "Practice 3"
# Practice 3
=begin
Author: Dante	
1. Take your previous script and change calculations for variables.
2. Add some line in the middle of your script that is referring to a variable that doesn’t exist. Please explain the error displayed. 
3. Create a new script 
	1. add variables with numbers and strings. 
	2. Print them as a sentences (like in the previous case)
	3. Add some sentence that perform some calculation using variable names
=end

=begin
the following script should display the fruit
and perform some operations	
=end
# Comment - start the script
puts "new test"
# Comment - display fruits
var1 = 25 + 30 / 6
var2 = "this is a string"

# 2. Add some line in the middle of your script that is referring to a variable that doesn’t exist. Please explain the error displayed. 
#puts "var3:  #{var3}"

# result: newScript2.rb:23:in `<main>': undefined local variable or method `var3' for main
# :Object (NameError)

puts "var1:  #{var1}"
puts "var2:  #{var2}"
#puts "apples: #{100 - 25 * 3 % 4}"

puts "============="
puts "Practice 4"
puts "convert variables"
#Write some variables that convert seconds, minutes, hours and days. Do not just type in the measurements. Please work out the math in Ruby.

seconds = 60
puts "Seconds = #{seconds}"
minutes = seconds /60.00
puts "minutes = #{minutes}"
hours = minutes / 60.00
puts "hours = #{hours}"
days = hours / 24.00
puts "days = #{days}"


