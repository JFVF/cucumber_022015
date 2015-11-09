#print "Give me a number: " 
#number = gets.chomp.to_i 
#bigger = number * 10 
#puts "A bigger number is #{bigger}."


def person_age (name, age)
	years = age * 365 * 12 * 30 * 24
	puts "Hi #{name}.upcase"
	puts "your #{age} in hours is #{years}"
end
print "What is your name?: " 
name = gets.chomp.to_s 
print "What is your age?: " 
age = gets.chomp.to_i 
person_age ("name", "age")

#puts "hello".upcase