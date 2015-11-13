=begin
Example of different ways of calling a function
=end

def person_age(name, age)
	hours = age * 365 * 24
	puts "Hi #{name.upcase}"
	puts  "Your age #{age} in hours is #{hours}"
end

person_age('Alisa', 17)
person_age 'Ren', 16