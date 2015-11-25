#regex_practice_1

class PersonDetail
	attr_reader:username
	attr_reader:password
	attr_reader:email

	def enter_username
		begin
			print "Enter username:"
			@username = gets.chomp
		end while is_username_valid == false
	end

	def enter_password
		begin
			print "Enter password:"
			@password = gets.chomp
		end while is_password_valid == false
	end

	def enter_email
		begin
			print "Enter email:"
			@email = gets.chomp
		end while is_email_valid == false
	end

	def is_username_valid
		return /[a-z0-9_]+/.match(@username) !=nil
	end

	def is_password_valid
		return /[a-z0-9A-Z]+{8,16}/.match(@password) !=nil
	end

	def is_email_valid
		return /[a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\.[a-zA-Z]{2,}/.match(@email) !=nil
	end



	def printDetails
		puts "////////////////////////////////"
		puts "The name is: #{@username}"
		puts "The password is: #{@password}"
		puts "The email is: #{@email}"
		puts "////////////////////////////////"
	end
end


pDetail = PersonDetail.new
pDetail.enter_username
pDetail.enter_password
pDetail.enter_email

pDetail.printDetails




