class Guest
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
def guest_example
	@guest_example ||= Guest.new
end
p guest_example.object_id # Output => 20402200  
p guest_example.add_user "Juan"
p guest_example.add_user "Maria"
p guest_example.save_all_user
p Guest.new.object_id # Output => 20402040  
p Guest.new.save_all_user
#With this way to use  singleton the execution time is less that using instance singleton.
# In this case a new object is create , and it is initialized lost the data of previous one
#both guarantees initialization call or inline initialization