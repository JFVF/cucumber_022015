=begin
Using instanced class and also applying singleton :
1. Add a class that initialized the values of :
	User : Guest
	Message : Welcome to the city
	Visitors : 0
2. Inside the class add a method to :
	1. Add a user
	2. Add a welcome message
	3. Increment visitors amount
	4. Save all the users, and messages in a hash
	5. Using attr_accesor print the last user defined

Explain which differences you see between both definitions
=end


class User
	attr_accessor :list

	def initialize
		@list = {}
		@user = 'guest'
		@message = 'Welcome to the city'
		@visitors = 0

		@list.store(@user, @message)
	end

	def add_user(name)
		@user = name
	end

	def add_welcome_message(message)
		@message = message
	end

	def increment_visitors
		@visitors += 1
	end

	def register
		@list.store(@user, @message)
	end

	def print_last_user
		puts 'The last user registered was:'
		users = Array.new(@list.keys)
		puts users.last
	end

end

def singleton_user
	@singleton_user ||= User.new
end

singleton_user.add_user('Alice')
singleton_user.add_welcome_message('Welcome to Wonderland')
singleton_user.increment_visitors
singleton_user.register

singleton_user.print_last_user