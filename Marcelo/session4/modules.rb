=begin
module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
=end

require_relative 'modules/greets'
require_relative 'modules/bye'

#include Greets
include Bye

class Greetings
#	include Greets
#	include Bye

	def first_greet
		puts "from class greetings"
	end
end

greetings = Greetings.new
greetings.first_greet
#greetings.hi
Greets.good_night
#greetings.good_bye
Bye.good_bye