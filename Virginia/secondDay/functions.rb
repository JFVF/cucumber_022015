####function1
def person_age(name, age)
	age_hours = 360 * age.to_i * 24
	name_in_uppercase = name.to_s.upcase
	puts "Hi #{name_in_uppercase}"
	puts " Your #{age} in hours is #{age_hours}"

end

person_age("virginia", "1")
person_age"sonia ", "2"


####function2
def celsius_to_fahrenheit(celsius)
	puts ((9 * celsius) / 5.to_f).to_f + 32

end
celsius_to_fahrenheit(2)


####function3
def fahrenheit_to_celsius(fahrenheit)
	calc = (5 * (fahrenheit - 32)) /9.to_f
	return calc

end
puts fahrenheit_to_celsius(40)