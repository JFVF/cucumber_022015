=begin
Add a method that is going to ask for a username :
Need to be write with lowercase letter (a-z), number (0-9), an underscore

Add a method that is going to ask for a password:
Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 charcters

Add a method that is going to ask for email
Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)
=end
class RegExpManager
	attr_accessor :username, :password, :email

	def ask_for_username(username)
		if username =~ /^[a-z0-9_]$/
			@username = username
		else
			@username = 'Error - You used a wrong combination of characters - Use any lowercase between a and z, numbers or underscores -'
		end
	end

	def ask_for_password(password)
		if password =~ /[a-z0-9A-Z]{8,16}$/
			@password = password
		else
			@password = 'Error! - You used a wrong combination of characters - Use any lowercase/uppercase between a and z or numbers; and with a length between 8 and 16 -'
		end
	end

	def ask_for_email(email)
		if email =~ /^[a-z]+@[a-z]{3,}\.[a-z]{2,4}?(\.[a-z]{2,3})?$/  # 
			@email = email
		else
			@email = 'Error! - Characters allowed are .com or .bo -'
		end
	end
end

manager = RegExpManager.new

puts 'Good day! Type your username'
manager.username = gets.chomp
manager.ask_for_username(manager.username)

puts 'please, type your password'
manager.password = gets.chomp
manager.ask_for_password(manager.password)

puts 'add your email, thanks!'
manager.email = gets.chomp
manager.ask_for_email(manager.email)

puts "Your username is: #{manager.username}"
puts "Your password is: #{manager.password}"
puts "Your email is: #{manager.email}"




