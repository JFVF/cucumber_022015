require 'singleton'

class UserAndMessages

	include Singleton

	attr_accessor :user, :message
	attr_reader :visitors

	def initialize
		@user = 'Guest'
		@message = 'Welcome to the city'
		@visitors = 0
		@user_list = [@user]
		@user_hash = {@user.to_sym => @user}
		@message_list = [@message]
		@message_hash = {@message.to_sym => @message}	
		nil
	end

	def add_user(user)
		@user_list.push(user)
		@user_hash = {@user.to_sym => @user}
		@visitors += 1
		nil
	end

	def add_message(message)
		@message_list.push(message)
		@message_hash = {@message.to_sym => @message}	
		@visitors += 1
		nil
	end

end

b1 = UserAndMessages.instance

p b1.user
p b1.message
p b1.visitors
puts

p b1.user = 'Pedro'
p b1.message = 'Greetings!'
p b1.visitors


b1.add_user('David')
b1.add_message('Hi')
b1.add_user('Ariel')
b1.add_message('Hallo')
b1.add_user('Rodrigo')
b1.add_message('Hola')
b1.add_user('Erwin')

p b1.visitors

p b1.user

b2 = UserAndMessages.instance

p b2.visitors


