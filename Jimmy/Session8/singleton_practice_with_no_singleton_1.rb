#singleton_practice 
#class without singleton
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

puts "First instance"
uh=User_Handler.new
uh.add_user
p uh.userHash.keys.last
puts "Length of the hash is: #{uh.userHash.length}"

puts "Second instance"
uh2=User_Handler.new
uh2.add_user
p uh2.userHash.keys.last
puts "Length of the hash is: #{uh2.userHash.length}"