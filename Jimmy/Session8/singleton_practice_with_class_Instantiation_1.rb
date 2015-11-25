#singleton_practice 
#class with instantiation
class User_Handler
	attr_accessor:userHash
	def initialize
		@user = "Guest"
		@message = "Welcome to the city"
		@visitors = 0
		@userHash = Hash.new
	end

	def add_user
		puts "Add the username:"
		username = gets.chomp

		puts "Enter the message:"
		message = gets.chomp

		@visitors+=1
		@userHash.store(username,message)
	end
end

def singleton_user_handler
	@singleton_user_handler ||= User_Handler.new
end


puts "First"
singleton_user_handler.add_user
p singleton_user_handler.userHash.keys.last
puts "Length of the hash is: #{singleton_user_handler.userHash.length}"

puts "Second"
singleton_user_handler.add_user
p singleton_user_handler.userHash.keys.last
puts "Length of the hash is: #{singleton_user_handler.userHash.length}"
