###
#By Diego Claure
#####
module Cover
def min_hours(min)
	min = min.to_f
	hours = min / 60
	return hours
end
 def hours_day(hours)
	hours = hours.to_f
	day = hours / 24
 	return day
 end
 def day_month(day)
	days = day.to_f
	month = days / 31
 	return month
 end
end

class Registration
attr_accessor :users
def initialize
	# @users {}
	@username = ""
	@id = ""
	@max_users = 1
end
 
 def maxusers(max)
 	@max_users = max.to_i
 	if max =~ /^[0-9]{3,15}$/
 		return @max_users
 	else puts "Maximum of users must be between 3-15"
 	end

end
 def username(user, id)
 	if @max_users > 0 
 	 if user =~ /^[a-z0-9]{,11}$/
 		# puts "user is " + user
 		@username= user
 		@id = id
 		users.store @username,@id
 		@max_users = @max_users - 1
 	 else puts "invalid user"
 	 end
 	end
 end
 def conv_type
 	puts "a) From minutes to hours"
	puts "b) From hours to days"
	puts "c) From days to months"
	puts "Select Option:"
	$var = gets.chomp
 	if $var == 'a'
 		Cover.min_hours($var)
  	end

	if $var == 'b'
 		Cover.reg.hours_day($var)
  	end
	if $var == 'a'
 		Cover.reg.day_month($var)
  	end
 	# return var
 		
end

end

  reg=Registration.new
  reg.maxusers(3)
  reg.username("die3s","1234")

