#user_registrator

require './module_time_conversor'
require 'Singleton'

class User_Registrator
	include Singleton
	include Time_Conversor
	attr_accessor:hash_users

	def initialize
		@hash_users = Hash.new
	end

	def enter_users
		
		id=nil
		username=nil
		$num_users_counter = 0
		$num_users = get_number_users #getting the number of users

		#puts $num_users
		#specifying the users

		while $num_users_counter < $num_users
			id = get_user_id		
			username = get_username

			#invoking the method that will display the conversion
			enter_the_type_conversion 


			@hash_users.store(id,username)
			$num_users_counter+=1
		end	


	end

	def enter_the_type_conversion
		
		option = get_option
		
		if (option == "a")
			print "Insert the value in minutes:"
			minutes = gets.chomp.to_i
			hours = convert_min_to_hours minutes			

			puts "#{minutes} minutes represent #{hours} hours"
		elsif (option =="b")
			print "Insert the value in hours:"
			hours = gets.chomp.to_i
			days = convert_hours_to_days hours			

			puts "#{hours} hours represent #{days} days"
		elsif (option == "c")
			print "Insert the value in days:"
			days = gets.chomp.to_i
			months = convert_days_to_months days			

			puts "#{days} days represent #{months} months"
		end
	end

	def get_option
		puts "a) From minutes to hours"
		puts "b) From hours to days"
		puts "c) From days to months"
		print "Enter the option for the conversion:"
		return gets.chomp
	end

	def get_user_id
		print "Enter the user id:"
		id = gets.chomp
		return id
	end

	def get_username
		print "Enter the username:"
		username = gets.chomp
		while is_username_valid(username) == false
			puts "The username has to have minimum 3 and max 11 chracters in lower case and/or numbers"
			print "Enter the username again:"
			username = gets.chomp
		end
		return username


	end

	def is_username_valid (username)
		return /[a-z0-9]+{3,11}/.match(username)!=nil
	end

	def get_number_users

		print "Enter the number of users:"
		$num_users = gets.chomp.to_i

		#validating the number of users entered
		while $num_users <= 3 || $num_users >15
			puts "Number incorrect of users to enter:"
			print "Enter the number of users again:"
			$num_users = gets.chomp.to_i			
		end

		return $num_users

	end

end

usReg = User_Registrator.instance
usReg.enter_users

#p usReg.hash_users






