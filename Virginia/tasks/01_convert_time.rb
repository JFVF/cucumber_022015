var_seconds = 1 
var_minutes = var_seconds * 60 
var_hours = var_minutes * 1
var_days = var_hours * 24

puts "if 1 minute has :  #{var_minutes} seconds"
puts "if 1 Hour has :  #{var_hours} minutes"
puts "if 1 Day has :  #{var_days} minutes"
result1 = 3 * var_days * var_minutes
puts "How seconds are there in 3 days? ->  #{result1} seconds"
result2 = 4320 / var_days
puts "How days are there in 5040  minutes? ->  #{result2} days"
