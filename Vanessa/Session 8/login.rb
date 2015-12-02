=begin
1. Add a method that is going to ask for a username :
	1. Need to be write with lowercase letter (a-z), 
	number (0-9), an underscore

2. Add a method that is going to ask for a password:
	1. Need to be write with lowercase letter (a-z), 
	number (0-9), letter (A-Z) and the length have to be 
	between 8 and 16 charcters

3. Add a method that is going to ask for email
	1. Need to have the format anything@domain.com 
	(could accept also country e.g. anything@domain.com.bo)
=end

class Login
	@username
	@password
	@email

	# works with: username34
	def request_username
		pattern = /[a-z_]+[0-9_]+/
		puts 'Insert a username:'
		@username = gets.chomp.to_s

		while !@username.match(pattern) do
			puts "The username needs to: \n
			* Be in lowercase (a-z) \n
			* Have numbers (0-9) \n
			* Have an underscore (_)"
			@username = gets.chomp.to_s
		end 
		puts "Username is: #{@username}"
	end

	def request_password
		pattern = /[a-z0-9A-Z]{8,16}/
		# [a-z0-9A-Z]{8,16}
		puts 'Insert password:'
		@password = gets.chomp.to_s

		while !@password.match(pattern) do
			puts "The password needs to: \n
			* Be in lowercase (a-z) \n
			* Have numbers (0-9) \n
			* Have upperscase letters (A-Z) \n
			* Have a length of 8 to 16"
			@password = gets.chomp.to_s
		end 
		puts "Password is: #{@password}"
	end

	def request_email
		pattern = /[a-z]{1,}@[a-z]{1,}(.com.[a-z]{1,}|.com)/
		puts 'Insert email:'
		@email = gets.chomp.to_s

		while !@email.match(pattern)
			puts "The accepted email formats are: \n
			* anything@domain.com \n
			* anything@domain.com.bo \n"
			@email = gets.chomp.to_s
		end 
		puts "Email is: #{@email}"
	end
end

login = Login.new
# login.request_username
# login.request_password
login.request_email

