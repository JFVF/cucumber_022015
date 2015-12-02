#Control Statements 

class AgeCalculator
	attr_reader:name, :age
	attr_writer:name, :age

	def calculate_age_in_hours 
		
		if is_age_valid
			@age = @age.to_i
			if @age >= 0 && @age <= 35
				return @age*365*24
			else
				return "Age in hours can't be calculated" 
			end
		else
			return "Age it is not a number"
		end
	end

	def prints_age_status

		age_status = calculate_age_in_hours
		puts result = (0..5).include?(@age) ? "#{@name}, You are a baby, total age #{@age} in hours #{age_status}" :
					  (6..12).include?(@age) ? "#{@name}, You are a child, total age #{@age} in hours #{age_status}":
					  (13..21).include?(@age) ? "#{@name}, You are a young people, total age #{@age} in hours #{age_status}":
					  (22..35).include?(@age) ? "#{@name}, You are a adult people, total age #{@age} in hours #{age_status}":
					  "#{@name}, #{age} #{age_status}"
		
	end

	def is_age_valid
		return /[a-zA-Z]/.match(@age) == nil
	end

end


age_calculator = AgeCalculator.new
print "Enter your name: "
age_calculator.name = gets.chomp
print "Enter your age: "
age_calculator.age = gets.chomp

age_calculator.prints_age_status
