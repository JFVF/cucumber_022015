=begin
Create a class that is going to receive :
name, age (use getter and setter concept)
Method to calculate years in hours only if years is lower than 35, otherwise return a message that age cannot be calculated
Method that consider the values obtained from the previous. Use short-if expression method, 
when value is between 0-5 year(converted to hours) print you are a baby
when value is between 6-12 year(converted to hours) print you are a child
when value is between 13-21years(converted to hours) print you are a young people
when value is between 22- 35(converted to hours) print you are adult
Otherwise print the message obtained from previous method.
=end

class AgeManager

	attr_accessor :name, :age

	def years_in_hours
		@age < 35 ? (@age * 365 * 24) : 'Age cannot be calculated'
	end

	def give_opinion
		case @age
		when (0..5) 
			puts 'You are a baby'
		when (6..12)
			puts 'You are a child'
		when (13..21)
			puts 'You are a young people'
		when (22..35)
			puts 'You are adult'
		else
			puts 'Age cannot be calculated'
		end
	end

end

age_manager = AgeManager.new

age_manager.age = 22
puts age_manager.years_in_hours

age_manager.give_opinion

puts 'Type your age'
age_manager.age = gets.chomp.to_i
while age_manager.age != 571 
	puts 'Type your age'
	age_manager.age = gets.chomp.to_i
	puts age_manager.years_in_hours
	age_manager.give_opinion	
end

