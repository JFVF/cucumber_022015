class ParsedTime

	def seconds_to_minutes(seconds)
		seconds.to_f / 60
	end

	def seconds_to_hours(seconds)
		seconds.to_f / 3600
	end	

	def seconds_to_minutes_and_hours(seconds)
		sec_to_min = self.seconds_to_minutes(seconds)
		sec_to_hour = self.seconds_to_hours(seconds)

		return sec_to_min, sec_to_hour
	end

end

seconds = 3600
sec_to_min, sec_to_hour = ParsedTime.new.seconds_to_minutes_and_hours(seconds)

puts "#{seconds} seconds are #{sec_to_min} minutes"
puts "#{seconds} seconds are #{sec_to_hour} hours"
