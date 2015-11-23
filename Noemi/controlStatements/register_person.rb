class Register_Person
	attr_writer:q_persons
	@h
	def get_Name
		
		$i = 1
		$num = @q_persons
		@h=Hash.new 
		begin
		   puts(" #$i start register" )
		   puts 'What is your ID?'
		   var_ID = gets.chomp.to_s
		   puts 'What is your name?'
		   var_name = gets.chomp.to_s
		   @h[var_ID] = var_name
		   $i +=1
		end while $i <= $num
		@h.inspect
		p @h

	end
	def change_upper
		@ary = Array.new 
		Array.new(@q_persons)
		$i = 1
		@h.each_with_index do |(key, value), index|
			puts(" #$i  registro...#{@h[key]}" )		
			@ary.push @h[key].upcase
			$i +=1
		end
		return @ary

	end	
	def say_bye ary_person
		ary_person.each {|n| puts "Good bye #{n}"}
	end
end
p_register = Register_Person.new
puts 'Give me the number of registers?'
var_q = gets.chomp.to_i
p_register.q_persons=var_q
p_register.get_Name
ary_name=p_register.change_upper
p_register.say_bye ary_name