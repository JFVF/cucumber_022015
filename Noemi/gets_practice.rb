=begin
puts 'What is your name?'
var_name = gets.chomp

print "Hi," + var_name + " How are you today?"
print "\tTest 1 Some Test\t".chomp
print "Test 2 Some Test".chomp('Some Test') # => “Some"
puts "\n"
print "Some Test\r\n".chomp # => "Some Test"
puts "\n"
print "\tRobert Martin\r\n".strip # => "Robert Martin"
puts "\n"
=end

#to_i convert to integer
=begin
puts 'Give me a number?'
var_number = gets.chomp.to_i
puts "A number is #{var_number}"
=end

# 'this' > var_number=0
# 'thisss566' > var_number=0
# '34this' > var_number=34

#to_f convert to flotante
=begin
puts 'Give me a flotante?'
var_number = gets.chomp.to_f
puts "A number is #{var_number}"
=end
#code welcome ("my friend") > welcome "my friend"
def person_age(name , age)
	
	puts "\nHi " + name.upcase
	age_hours= age.to_i*24*360
	puts "Your age in hours is " + age_hours.to_s 

end
=begin
puts 'Give me your name?'
var_name = gets.chomp.to_s
puts 'Give me your age?'
var_age = gets.chomp.to_f
person_age var_name,var_age 
person_age(var_name,var_age)
=end
#return values from a funtion code style
def convert_fahrenheit(celsius)
	myfahrenheit=((9 * celsius.to_f)/5 +32)
end

def convert_celsius(myfahre)
	(5*(myfahre.to_f + 32.to_f))/9
	
end
puts convert_fahrenheit("12")
puts "celsius"
puts convert_celsius("32")