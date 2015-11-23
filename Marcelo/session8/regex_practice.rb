class RegexPractice
	def ask_username
		validate "user name", /^[0-9a-z_]+/
	end

	def ask_password
		validate "password", /^[0-9a-zA-Z]{8,16}$/ 
	end

	def ask_email
		validate "email", /^[a-z]+@[a-z]{2,}\.[a-z]{2,}(\.[a-z]{2,})?$/
	end

	private
	def ask(parameter)
		print "Enter #{parameter}: "
		input = gets.chomp
	end

	def validate(parameter, pattern)
		is_valid = false
		begin
			name = ask parameter
			if name =~ pattern
				is_valid = true
				puts "#{ parameter.upcase } is correct"
			else
				puts "Invalid #{ parameter.upcase }"
			end
		end while !is_valid
	end		

end

practice = RegexPractice.new
practice.ask_username
puts ""

practice.ask_password
puts ""

practice.ask_email