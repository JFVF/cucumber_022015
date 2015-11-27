=begin
autor Noemi Guzman	
date 11/25/2015
=end

module Tine_conver
	def Tine_conver.min_to_hours min_t 
		puts " #{min_t} min in hours is : #{min_t / 60}"
	end	
	def Tine_conver.hour_to_days hour_t
		puts " #{hour_t} hours in days is : #{hour_t / 24}"
	end	
	def Tine_conver.day_to_mouts day_t
		puts " #{day_t} days in mounts is : #{day_t /30}"
	end
	
end	

class Registor
	attr_reader:h
	def initize
		@id=null
		@name = null		
	end
	def ask_id_name q_user
		@h=Hash.new 
		$i=1
		begin
			puts 'Give me your ID'
			@id=gets.chomp.to_s
			loop do 
				puts 'Give me your username'
				name = gets.chomp.to_s
				@name=name
				if name = ~ /^[a-z0-9]{1,11}$/					
					@h[@id] = @name
					break
				end
			end		
			
			$i +=1
		end while $i <= q_user
		@h.inspect		
	end 
	def ask_q_users
		puts 'Give the amount of users'
		@q_users=gets.chomp.to_i
		case @q_users
			 when 3..15 then 
			 	puts '*******Start register*******'
			 	ask_id_name @q_users
			 				 	
			 else puts "invalid amount of user, try again"
		end 
		p @h
		return @h
	end 
	def ask_type_conver user
		puts '*******conversion time*******'

		user.each_with_index do |(key, value), index|
			loop do 
				puts "... #{value} ! Wich type of conversion do you want?\n a) From minutes to hours\n b) from hours to days\n c) from days to month "
				myop=gets.chomp.to_s
				var_abc=myop
				if myop= ~ /[a-c]/
					cal_time var_abc
					break
				end
			end
		end
	end 
	def cal_time op_abc			
		case 
			when op_abc == "a" 
				puts "Insert value in min"
				myt=gets.chomp.to_i
				Tine_conver.min_to_hours  myt
			when op_abc =="b" 
				puts "Insert value in hours"
				myt=gets.chomp.to_i
				Tine_conver.hour_to_days myt
			when op_abc=="c" 
				puts "Insert value in days"
				myt=gets.chomp.to_i
				Tine_conver.day_to_mouts myt
			else puts "invalid"
		end					
	
	end
end	
def registor_example
	@registor_example ||= Registor.new
end

my_users =  registor_example.ask_q_users
registor_example.ask_type_conver my_users