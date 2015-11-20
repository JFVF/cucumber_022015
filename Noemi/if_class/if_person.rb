class If_person
	attr_writer :name
	attr_writer :age
	attr_reader :age
	def conver_hour
				#(@age)
		puts @age<=35 ? @age*24*360 : "age cannot be calculated"
			
	end
	def def_if_baby # age
		h_age=@age*24*360 
		case @age
			 when 0..5 then puts "you are baby" + ",year on hours:" +  h_age.to_s   
			 when 6..12 then puts "you are child"  + ",year on hours:" +  h_age.to_s     
			 when 13...21 then puts "you are young people" + ",year on hours:" +   h_age.to_s     
			 when 22...35 then puts "you are adult" + ",year on hours:" +  h_age.to_s    
			 else puts "age cannot be calculated" + " ,year on hours:" +   h_age.to_s   
		end
	end	
end

puts 'Give me your name'
var_name=gets.chomp.to_s
puts 'Give me your age'
var_age=gets.chomp.to_i
new_person= If_person.new
new_person.age=var_age
new_person.def_if_baby 
new_person.conver_hour
