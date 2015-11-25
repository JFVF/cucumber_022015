require 'singleton'
class SingletonInclude
	include Singleton
	attr_accessor :user

	def initialize 
		@users = {}
		@user = "Guest"
		@message = "Welcome to the city"
		@visitors = 0
	end
	def addUser userName, message
		@user = userName
		@message = message
		@visitors = @visitors + 1
		@users.store "user#{@visitors}", @user
		@users.store "message#{@visitors}", @message
	end



end


puts "**************"
puts "Practice Singleton Include" 
puts "**************"

b1 = SingletonInclude.instance
p b1.user 
b1.user = "user 1"
b1.addUser "user2", "message2" 
p b1.user
