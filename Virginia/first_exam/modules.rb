module Convertions
	def min_hours(mins)
		var_hours = mins.to_f / 60
		puts "There are #{var_hours} hours in #{mins} minutes"
	end

	def hours_day(hours)
		var_days = hours.to_f / 24
		puts "There are #{var_days} days in #{hours} hours"
	end
	
	def day_month(days)
		var_months = days.to_f / 30
		puts "There are #{var_months} months in #{days} days"
	end
end

#Convertions.min_hours(120)
#Convertions.hours_day(30)
#Convertions.day_month(60)