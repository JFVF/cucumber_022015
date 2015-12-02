#person_age function
def person_age(name, age)

	age_hours = age * 365 * 24
	puts("Hi #{name.upcase}")
	puts("Your age #{age} in hours is #{age_hours}")
end

print("Enter your name: ")
name = gets.chomp
print("Enter your age: ")
age = gets.chomp.to_i

#sending with parenthesis
puts("\n...Calling with parenthesis person_age(name,age)")
person_age(name,age)

#sending without parenthesis
puts("\n...Calling without parenthesis person_age name,age")
person_age name,age
