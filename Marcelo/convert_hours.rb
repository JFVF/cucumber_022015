# marcelo ferrufino murillo

# Script to convert hours to minutes/seconds

puts "---------------------------------------"
puts "- Convert hours to minutes or seconds -"
puts "---------------------------------------"
print "enter hours to be converted: "
hours = gets.chomp

print "do you want convert to MINUTES (enter '1') or convert to SECONDS (enter '2')? _ "
option = gets.chomp
if ( option == "1" )
	puts hours + " hours in minutes are: #{ (hours.to_f * 60.0).round(2) }" 
elsif ( option == "2" )
	puts hours + " hours in seconds are: #{ (hours.to_f * 3600.0).round(2) }" 
else
	puts "wrong option entered"
end