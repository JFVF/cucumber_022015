class Registration
	attr_accessor :username
    attr_accessor :id
    attr_accessor :uhash

  def createHash
		puts "Enter user amount"
		length = gets.chomp.to_i

		@uhash = Hash.new
		length.times do |time|
			puts "Enter user id #{ time + 1 } : "
			@id = gets.chomp.to_sym
			
   		puts "Enter user name #{ time + 1  } : "
			@username = gets.chomp
			
			@uhash.store id,username
 		end
  end
end

user1 = Registration.new
user1.createHash