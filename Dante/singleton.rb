class SingletonPractice

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


def singleton_practice
	@singleton_practice ||= SingletonPractice.new
end

puts "**************"
puts "Practice Singleton"
puts "**************"
singleton_practice.user = "user 1"
singleton_practice.addUser "user2", "message2"   
p singleton_practice.user  
