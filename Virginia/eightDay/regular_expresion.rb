class RegularExpresion
	attr_reader:username
	attr_reader:password
	attr_reader:email

	def setName()
		$i = 0
		$correct_name = false
		begin
			puts("What is your name? " )
			puts name = gets.chomp
			if name =~ /[a-z0-9_]/
				$correct_name = true
			end

			$i +=1
			#name != /[a-z0-9_]/
		end while $correct_name == false
	end

	def setPassword()
		$i = 0
		begin
			puts("What is your password? " )
			pwd= gets.chomp
			if $i > 0
				puts ("Make sure that password has the following characters: a-z,A-Z, 0-9 and its leght is between 8 to 16")
			end
			$i +=1
		end while pwd !=~ /[a-z0-9A-Z]{8,16}/
	end

	def setEmail()
		$i = 0
		begin
			puts("What is your email? " )
			email= gets.chomp
			if $i > 0
				puts ("Make sure that your email will be similar to: anything@domain.com")
			end
			$i +=1
		end while email != /^[a-z0-9A-Z]+[@][a-z0-9A-Z]+[.][a-zA-Z]{0,3}$/
	end	

end	

regularExpresion = RegularExpresion.new()
regularExpresion.setName
regularExpresion.setPassword
regularExpresion.setEmail



