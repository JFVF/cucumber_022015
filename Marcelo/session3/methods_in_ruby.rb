def person_age(name, age)
	name = name.upcase
	aux_age = age * 365 * 24
	puts "Hi #{ name }"
	puts "Your age: '#{ age } years old' in hours is #{ aux_age }"
end

print "Type Name: "
name = gets.chomp
print "Type age: "
age = gets.chomp.to_i
person_age name, age
person_age(name, age)