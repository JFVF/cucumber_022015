=begin
Exercise 4
Write some variables that convert seconds, minutes, hours and days. 
Do not just type in the measurements. Please work out the math in Ruby.
=end

=begin
Accepted values in 'from'
M, S, H, D

=end
class Converter
	def self.convert_to_minutes(value, from)
		@value = value
		res = nil
		if value.is_a?(Fixnum)
			case from
				when 'S'
					res = value / 60
				when 'M'
					res = value
				when 'H'
					res = value * 60
				when 'D'
					res = value * 24 * 60
			end
		else		
			puts 'Value must be a number'
	end
	end

	def self.convert_to_seconds(value, from)
		@value = value
		res = nil
		if value.is_a?(Fixnum)
			case from
				when 'S'
					res = value
				when 'M'
					res = value * 60
				when 'H'
					res = value * 3600
				when 'D'
					res = value * 24 *3600
			end
		else
			puts 'Value must be a number'
		end
	end

	def self.convert_to_hours(value, from)
		@value = value
		res = nil
		if value.is_a?(Fixnum)
			case from
				when 'S'
					res = value / 3600
				when 'M'
					res = value / 60
				when 'H'
					res = value
				when 'D'
					res = value * 24
			end
		else
			puts 'Value must be a number'
		end
	end

	def self.convert_to_days(value, from)
		@value = value
		res = nil
		if value.is_a?(Fixnum)
			case from
				when 'S'
					res = value / (3600 * 24)
				when 'M'
					res = value / (60 * 24)
				when 'H'
					res = value / 24
				when 'D'
					res = value
			end
		else
			puts 'Value must be a number'
		end
	end

	def self.convert_to(value, from)
		puts "Convert #{value} #{from}"
		puts "Seconds: #{convert_to_seconds(value, from)}"
		puts "Minutes: #{convert_to_minutes(value, from)}"
		puts "Hours: #{convert_to_hours(value, from)}"
		puts "Days: #{convert_to_days(value, from)}"
	end
end

Converter.convert_to(3600, 'S')
puts '--------------------------'
Converter.convert_to(180, 'M')
puts '--------------------------'
Converter.convert_to(24, 'H')
puts '--------------------------'
Converter.convert_to(2, 'D')





