###
#By Diego Claure
#####
module Cover

	def min_hours(min)
		$hours = min / 60
		return $hours
	end
 	def hours_day(hours)
		$day = hours / 24
	 	return $day
 	end
 	def day_month(day)
		$month = day / 30
	 	return $month
 	end
end

class Registration
	attr_accessor :users
	include Cover
		def initialize
			@users = {}
			@username = nil
			@id = nil
			@max_users = 1
		end
 
		def maxusers
			puts "Maximum users: "
			max = gets.chomp.to_i
			if max >= 3 && max <=15
				@max_users = max
				return @max_users
			else
				puts "Maximum users allowed should be between 3 and 15"
				@max_users = 0
				return @max_users
			end
		end
 		def user_name
 			while @max_users != 0 do
 				puts "Enter ID: "
 				id = gets.chomp
 				puts "Enter User: "
 				user = gets.chomp
 	 			if user =~ /^[a-z0-9]{,11}$/
	 				# puts "user is " + user
 					@username= user
	 				@id = id
 					@users.store @id, @username
 					@max_users = @max_users - 1
 	 			else puts "invalid user"
 	 			end
 			end
 		end
# end
		def conv_type
			puts "***Conversion***"
			puts "a) From minutes to hours"
			puts "b) From hours to days"
			puts "c) From days to months"
			puts "Select Option:"
			$var = gets.chomp
			return $var
		end
		def calc_conv
			if $var == 'a'
				puts "Insert value in minutes: "
				min = gets.chomp.to_f
				min_hours(min)
				puts "#{$min} represents #{$hours} hours"
				else 
					if $var == 'b'
						puts "Insert value in hours: "
						hours = gets.chomp.to_f
						hours_day(hours)
						puts "#{$hours} represents #{$day} days"
						else
							if $var == 'c'
								puts "Insert value in days: "
								day = gets.chomp.to_f
								day_month(day)
								puts "#{$day} represents #{$month} month(s)"
							else puts "incorrect option #{$var}"
							end	
					end
				
			end			
			
			
		end
 end

def singletn
	@singletn ||= Registration.new
end

  
  # reg=Registration.new
  singletn.maxusers 			#Get Maximum users
  singletn.user_name		#Get users and IDs  
  p singletn.users 			#Print Users and IDs
  singletn.conv_type			#Call conversion type
  singletn.calc_conv 			#Calc conversion
  
  