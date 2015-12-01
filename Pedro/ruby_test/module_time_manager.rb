module TimeManager
	def minutes_to_hours(minutes)
		minutes.to_f / 60	
	end

	def hours_to_days(hours)
		hours.to_f / 24
	end

	def days_to_month(days)
		days.to_f / 30 
	end
end


#(571) The next lines can be uncommented for testing purposes.
=begin
include TimeManager

puts minutes_to_hours(60)
puts hours_to_days(24)
puts days_to_month(30)
=end

