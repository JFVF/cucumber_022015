#module conversor
module Time_Conversor
	def convert_min_to_hours (min)
		return min/60
	end

	def convert_hours_to_days(hours)
		return hours/24
	end

	def convert_days_to_months (days)
		return days/30
	end
end
