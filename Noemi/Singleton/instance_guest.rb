
require 'singleton'  
class Guest
	include Singleton
	def initialize
		@User= "Guest"
		@Message="Welcome to the city, "
		@Visitors= 0
		@users = Array.new
		@h_user = Hash.new 
	end
	def add_user newuser
		@users.push(newuser)		
	end	
	def add_welcome_message
		@Message 
	end 
	def increment_visitors
		@Visitors += 1		
	end
	def save_all_user
		@users.each {|user| @h_user[user] = add_welcome_message + user} 	
	end
end

b1 = Guest.instance
p b1.add_user "Juan"
p b1.add_user "Maria"
p b1.save_all_user
p b1.object_id # Output => 20402200  
b2 = Guest.instance
p b2.add_user "Mario"
p b2.save_all_user
p b2.object_id # Output => 20402200  
