=begin
autor Noemi Guzman	
date 11/25/2015
=end

module Tine_conver
	def Tine_conver.min_to_hours min_t 
		puts " #{min_t}.to_i min in hours is : #{min_t * 60}"
	end	
	def Tine_conver.hour_to_days hour_t
		puts " #{hour_t} hours in days is : #{hour_t / 24}"
	end	
	def Tine_conver.day_to_mouts day_t
		puts " #{day_t} days in mounts is : #{day_t /30}"
	end
	
end	
Tine_conver.min_to_hours 120
Tine_conver.hour_to_days 240
Tine_conver.day_to_mouts 90
