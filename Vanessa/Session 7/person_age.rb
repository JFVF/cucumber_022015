=begin
Create a class that is going to receive :
1. name, age (use getter and setter concept)
2. Method to calculate years in hours only if years is lower than 35, 
otherwise return a message that age cannot be calculated
3. Method that consider the values obtained from the previous. Use short-if expression method, 
	1. when value is between 0-5 year(converted to hours) print you are a baby
	2. when value is between 6-12 year(converted to hours) print you are a child
	3. when value is between 13-21years(converted to hours) print you are a young people
	4. when value is between 22- 35(converted to hours) print you are adult
	5. Otherwise print the message obtained from previous method.
=end

class PersonAge
	attr_accessor :name, :age

	def create
		puts 'Insert the name:'
		@name = gets.chomp.to_s

		puts 'Insert the age:'
		@age = gets.chomp.to_i
	end

	def convert_to_hours(age)
		year_in_hours = nil
		(age <= 35)? year_in_hours = age * 365 * 24 : year_in_hours = 'Years in hours cannot be calculated'
		
		year_in_hours 
	end

	def determinate_age(name, age)
		case age
		when 0..convert_to_hours(5)
			puts "#{name}, you are a baby"
		when convert_to_hours(6)..convert_to_hours(12)
			puts "#{name}, you are a child"
		when convert_to_hours(13)..convert_to_hours(21)
			puts "#{name}, you are a young person"
		when convert_to_hours(22)..convert_to_hours(35)
			puts "#{name}, you are an adult"
		else
			puts age
		end
	end
end

person = PersonAge.new
person.create

year_in_hours = person.convert_to_hours(person.age)

person.determinate_age(person.name, year_in_hours)
