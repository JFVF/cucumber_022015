class ParsedTime

	def self.seconds_to_minutes(seconds)
		result = seconds / 60.0
		puts "#{seconds} seconds are #{result} minutes"
	end

	def self.minutes_to_hours(minutes)
		result = minutes / 60.0
		puts "#{minutes} minutes are #{result} hours"
	end

	def self.seconds_to_hours(seconds)
		result = seconds / 3600.0
		puts "#{seconds} seconds are #{result} hours"
	end	

end

ParsedTime.seconds_to_minutes(100)
ParsedTime.minutes_to_hours(120)
ParsedTime.seconds_to_hours(23556589)