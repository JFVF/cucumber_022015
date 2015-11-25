#singleton_practice 
#class with singleton
#The different between with/out singleton is that I could see
# the instantiation creates an instance that it is return by the method in my case singleton_user_handler
# and in the singleton the Singleton handles only one instance of the User_Handler 
# 



require 'Singleton'
class User_Handler
	include Singleton

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


uh=User_Handler.instance
uh.add_user
p uh.userHash.keys.last
puts "Length of the hash is: #{uh.userHash.length}"

uh2 = User_Handler.instance
uh2.add_user
p uh2.userHash.keys.last
puts "Length of the hash is: #{uh2.userHash.length}"

uh3 = User_Handler.instance
#uh2.add_user #without using adding an user
p uh3.userHash.keys.last #the same object added in the uh2
puts "Length of the hash is: #{uh3.userHash.length}"

