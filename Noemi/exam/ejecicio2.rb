=begin
autor Noemi Guzman	
date 11/25/2015
=end
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
		p @h
	end 
	def ask_q_users
		puts 'Give the amount of users'
		@q_users=gets.chomp.to_i
		case @q_users
			 when 3..15 then 
			 	ask_id_name @q_users
			 	ask_type_conver			 	
			 else puts "invalid amount of user, try again"
		end 
	end 
	def ask_type_conver
		@h.each_with_index do |(key, value), index|
			loop do 
				puts "... #{value} ! Wich type of conversion do you want? \n a) From minutes to hours b) from hours to days c) from days to month "
				myop=gets.chomp.to_s
				break if var_name = ~ /[a-c]/
			end
		end
	end 
	def cal_time op_abc	
		@h.each_with_index do |(key, value), index|
			case op_abc
				when a puts "Insert value in min"
				when b puts "Insert value in hours"
				when b puts "Insert value in days"
				else puts "invalid
			end	
				
		end
	end
end	
Registor.new.ask_q_users