module Conversions
	def convert_from_minutes_to_hours(minutes)
		( minutes / 60 ).round(2)
	end

	def convert_from_hours_to_days(hours)
		( hours / 24 ).round(2)
	end

	def convert_from_days_to_months(days)
		( days / 30 ).round(2)
	end
end