class RegularExpresion
	attr_reader:username
	attr_reader:password
	attr_reader:email

	def setName()
		$i = 0
		begin
			if $i > 0
				puts ("\tYour name should have the following characters: a-z, 0-9 OR  _ ")
			end
			puts("What is your name? ")
			name = gets.chomp
			$i +=1
		end while name !~ /[a-z0-9_]/
	end

	def setPassword()
		$i = 0
		begin
			if $i > 0
				puts ("\tYour password should have the following characters: a-z,A-Z, 0-9 and its leght is between 8 to 16")
			end
			puts("What is your password? " )
			pwd= gets.chomp			
			$i +=1
		end while pwd !~ /[a-z0-9A-Z]{8,16}/
	end

	def setEmail()
		$i = 0
		begin
			if $i > 0
				puts ("\tYour email will be similar to: anything@domain.com")
			end
			puts("What is your email? ")
			email= gets.chomp
			$i +=1
		end while email !~ /^[a-z0-9A-Z]+[@]+[a-z0-9A-Z]+[.]+[a-zA-Z]{0,3}$/  ## miss to review if it is correct ?
	end	
end	

regularExpresion = RegularExpresion.new()
regularExpresion.setName
regularExpresion.setPassword
regularExpresion.setEmail



