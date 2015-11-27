#This method conver some kinds of time units
def calculate (days = 0, hours = 0, minutes = 0, seconds = 0)
 #time unit variables
 day = 24
 hour = 60
 minute = 60
 
 puts " #{days} days ---->> hours = #{days*day}"
 puts " #{days} days ---->> minutes = #{days*day*hour*hours}"
 puts " #{days} days ---->> seconds = #{days*day*hour*hours*60}"
 puts "\n"
 puts " #{hours} hours ---->> days = #{hours/day}"
 puts " #{hours} hours ---->> minutes = #{hours*minute}"
 puts " #{hours} hours ---->> seconds = #{hours*minute*60}"
 puts "\n"
 puts " #{minutes} minutes ---->> days = #{minutes/(day*hour)}"
 puts " #{minutes} minutes ---->> hours = #{minutes/minute}"
 puts " #{minutes} minutes ---->> seconds = #{minute*minutes}"
 puts "\n"
 puts " #{seconds} seconds ---->> days = #{seconds/(day*hour*minute)}"
 puts " #{seconds} seconds ---->> hours = #{seconds/(hour*minute)}"
 puts " #{seconds} seconds ---->> minutes = #{seconds/60}"
 
end

#call calculate method
calculate 1,2,60,1000009