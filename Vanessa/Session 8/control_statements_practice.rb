=begin
Create a class that is going to receive :
1. The quantity of persons to register
2. One method to get the Name and ID for all the persons registered
3. One method that consider:
 1. for each one of the Names, change them to upper case
 2. print the position and the Name of each person registered 
 3. Save the name in upper case into an array, return the array
4. One method that According the amount of persons registered say “good bye <name>” 
to each one until all persons are gone.
=end

class Registration
	@quantity
	@list 

	def initialize(quantity)
		@quantity = quantity
		@list = []
	end
	
	def get_people_registered
		@list.each_with_index do |person, index|
			puts "Person: #{index} - #{person}"
		end
	end

	def register_person()
		puts "#{@quantity} person(s) are going to be resgistered:"		
		@quantity.times do |position|
			puts 'Insert the name:'
			name = gets.chomp.to_s
			name_uppercase = name.upcase
			@list.push(name_uppercase)
			puts "Person Registered: #{position} - #{name_uppercase}"
		end		
	end

	def say_goodbye
		@list.each do |person|
			puts "Good bye #{person}"
		end
	end
end

registration = Registration.new(2)
registration.register_person
puts "\n"
registration.get_people_registered
puts "\n"
registration.say_goodbye

