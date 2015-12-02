#Greets and bye to a friend
#require_relative "greets.rb"
#require_relative "bye.rb"

# mixin mode
require "./greets.rb"
require "./bye.rb"

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




