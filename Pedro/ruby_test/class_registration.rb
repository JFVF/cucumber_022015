require 'singleton'

require_relative 'module_time_manager' 

class RegistrationManager

	include Singleton
	include TimeManager

	attr_accessor :username, :id

	def initialize
		@username = nil
		@id = nil

		@hash_of_usernames = {}
		@hash_of_ids = {}
		@amount_of_users = 0
		nil	
	end

	def ask_username_and_id_to_register
		puts 'Type your username.'
		username = gets.chomp
		if username #username =~ /[a-z0-9]{1, 11}/
			puts 'Type your id, please.'
			id = gets.chomp
			self.register(username, id)
		else
			puts 'Use lower case from a to z or numbers and with a length between 1 and 11'
			ask_username_and_id_to_register
		end
	end

	def register(username, id)
		@hash_of_usernames[username.to_sym]	= username
		@hash_of_ids[id.to_sym] = id
		@amount_of_users += 1
		nil
	end

	def print_usernames
		puts '------- List of Usernames -------'
		@hash_of_usernames.each_key do |key|
			puts @hash_of_usernames[key]
		end
	end

	def print_ids
		puts '------- List of Ids -------'
		@hash_of_ids.each_key do |key|
			puts @hash_of_ids[key]
		end
	end

	def ask_for_amount_of_users
		puts (3..15).include?(@amount_of_users) ? "The amount of users is: #{@amount_of_users}" : 'Amount of users out of range'
	end

	def ask_value
		puts 'Type the value to convert'
		@value = gets.chomp
	end

	def ask_for_type_conversion
		puts 'Use (a) to convert minutes to hours'
		puts 'Use (b) to convert hours to days'
		puts 'Use (c) to convert days to month'
		option = gets.chomp
		case option
		when 'a'
			result = minutes_to_hours(self.ask_value)	
			puts '%s Minutes represent %s Hours' % [@value, result]
		when 'b'
			result = hours_to_days(self.ask)
			puts '%s Hours represent %s Days' % [@value, result]
		when 'c'
			result = days_to_month(self.ask)
			puts '%s Days represent %s Months' % [@value, result]
		else
			puts 'Not implemented method'
		end
	end

end

reg = RegistrationManager.instance

reg.ask_for_type_conversion

reg.ask_for_amount_of_users

reg.ask_username_and_id_to_register

reg.print_usernames

reg.print_ids
