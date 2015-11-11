#Greets and bye to a friend
module Greets
	def hiFriend
		puts "Hi Friend"
	end	
	def goodNight
		puts"Good night"
	end
	def goodAfternoon
		puts "Good afternoon"
	end
end

module Bye
	def goodBye
		puts "Good bye"
	end
	def seeYouLater
		puts "See you later aligator"
	end
	def takeCare
		puts "Take care"
	end
end

class GB
	include Greets
	include Bye
end

#creating the class
	gb = GB.new
	gb.goodAfternoon
	gb.goodBye

	gb.hiFriend
	gb.seeYouLater




