require 'singleton'

class UserAndMessages

	include Singleton

	attr_accessor :user, :message, :visitors

	def initialize
		@user = 'Guest'
		@message = 'Welcome to the city'
		@visitors = 0

		@user_list = [@user]
		@user_hash = {@user.to_sym => @user}
		@message_list = [@message]
		nil
	end

	def add_user(user)
		@user_list.push(user)
		@visitors += 1
	end

	def add_user(message)
		@message_list.push(message)
		@visitors += 1
	end

end

b1 = UserAndMessages.instance

