# marcelo ferrufino murillo

# Script to convert minutes to seconds, minutes and days

puts "--------------------------------------------------"
puts "- Convert minutes to: seconds, minutes and  days -"
puts "--------------------------------------------------"
print "Enter minutes to be converted : "
minutes = gets.chomp

puts minutes + " minutes in seconds are: #{ minutes.to_i * 60 }" 
puts minutes + " minutes in hours are: #{ (minutes.to_f / 60.0).round(2) }" 
puts minutes + " minutes in days are: #{ ((minutes.to_f / 60.0) / 24).round(2) }"