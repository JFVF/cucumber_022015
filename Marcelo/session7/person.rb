class Person
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def calculate_years_in_hours(years)
		if ( years < 35 )
			return 8760 * years
		else
			return "Age cannot be calculated"
		end
	end

	def define_age(age)
		if age.instance_of? String
			puts age
		else
			years = age / 8760
			case years
			when 0..5 then puts "You are a baby"
			when 6..12 then puts "You are a child"
			when 13..21 then puts "You are young"
			when 22..35 then puts "You are adult"
			end
		end
	end
end

print "Enter person name: "
name = gets.chomp
print "Enter age: "
age = gets.chomp.to_i

person = Person.new(name, age)
age_in_hours = person.calculate_years_in_hours(person.age)
puts "Age in hours is: #{age_in_hours}"

person.define_age(age_in_hours)