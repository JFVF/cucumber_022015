=begin
=end

require "./conversor"

class Registration
	attr_writer :list

	def initialize
		@list = {}
		@username = nil
		@id = nil
	end

	def registrate_user
		puts 'Insert the id:'
		@id = gets.chomp.to_s

		puts 'Insert the username:'
		pattern = /[a-z0-9]{1,11}/
		@username = gets.chomp.to_s

		while !@username.match(pattern) do			
			puts "The username needs to: \n
			* Be in lowercase (a-z) \n
			* Have numbers (0-9) \n
			* Be no more than 11 characters"
			puts 'Insert the username:'
			@username = gets.chomp.to_s
		end
		
		@list.store(@id, @username)
		puts @list
	end

	def start_registration
		puts 'Insert the number of users to registrate:'
		size = gets.chomp.to_i
		max_limit = 15
		min_limit = 3

		if (size > max_limit || size < min_limit)
			puts "The number of users needs to be between #{min_limit} - #{max_limit}"
		else
			size.times do |position|
				puts "Registering the user number #{position+1}:"
				registrate_user
			end
		end
	end

	def request_conversion
		puts "Types of conversion(a-b-c): \n
		a) From minutes to hours \n
		b) From hours to days \n
		c) From days to month \n"

		gets.chomp.to_s
	end

	def make_conversion
		
		@list.each_pair do |id, user|
			puts "User \"#{user}\" select a type of conversion:"
			type = request_conversion

			case type
			when 'a'
				print 'Insert the value in minutes:'
				value = gets.chomp.to_i
				result = Conversor.minute_to_hours(value)
				puts "#{value} Mins represents #{result} Hour(s) \n"
			when 'b'
				print 'Insert the value in hours:'
				value = gets.chomp.to_i
				result = Conversor.hours_to_days(value)
				puts "#{value} Hrs represents #{result} days(s) \n"
			when 'c'
				print 'Insert the value in days:'
				value = gets.chomp.to_i
				result = Conversor.days_to_month(value)
				puts "#{value} Days represents #{result} month(s) \n"
			else
				puts "Option #{type} does not exist"
			end
		end

	end
end

def singleton_registration
	@singleton_registration ||= Registration.new
end

singleton_registration.start_registration
singleton_registration.make_conversion
