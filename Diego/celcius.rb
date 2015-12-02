#print "Give me a number: " 
#number = gets.chomp.to_i 
#bigger = number * 10 
#puts "A bigger number is #{bigger}."

#Convert Celcius to Fahrenheit 
def fahrenheit (cel)
	farnh = (((9 * cel)/ 5) + 32)
	puts "fahrenheit: #{farnh}"
end
print "Enter celcius degrees to convert: " 
cel = gets.chomp.to_f 
fahrenheit (cel)

#Convert Celcius to Fahrenheit option 2
def fahrenheit (cel)
	farnh = (((9 * cel)/ 5) + 32)
	puts "fahrenheit: #{farnh}"
end
fahrenheit (21)
#puts "hello".upcase


#Convert Fahrenheit to Celcius
def celcius (far)
	cel = (((9 * far)/ 5) + 32)
	puts "Celcius: #{cel}"
end
print "Enter fahrenheit degrees to convert: " 
far = gets.chomp.to_f 
celcius (far)