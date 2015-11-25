require 'singleton'

class UserAndMessages

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

def single
	@single ||= UserAndMessages.new
end



p single.user
p single.message
p single.visitors
puts

p single.user = 'Pedro'
p single.message = 'Greetings!'
p single.visitors


single.add_user('David')
single.add_message('Hi')
single.add_user('Ariel')
single.add_message('Hallo')
single.add_user('Rodrigo')
single.add_message('Hola')
single.add_user('Erwin')

p single.visitors

p single.user


