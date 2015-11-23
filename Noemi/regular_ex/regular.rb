str = "cast and dog"
if str =~ /cat/
puts "There's a cat here somewhere"
end
class Regular
	def verify_name		
		loop do 
			puts 'Give me your username'
			var_name=gets.chomp.to_s
			break if var_name = ~ /[a-z0-9_]/
		end			
	end
	def verify_password
		loop do 
			puts 'Give me your Password'
			pwd=gets.chomp.to_s
			break if pwd=~ /^[a-zA-Z0-9]{8,16}$/
		end			
	end
	def verify_email
		loop do 
			puts 'Give me your email'
			email=gets.chomp.to_s
			break if email=~ /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/	
		end	
	end
end

new_person= Regular.new
new_person.verify_name
new_person.verify_password
new_person.verify_email