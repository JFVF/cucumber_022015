def prints_passenger_information(name, city="CBBA", price)
    name = name.chomp
    price_USD = price.to_f * 6.97 
    result = "Hi '#{name}' your destination city is: '#{city}' and the price of ticket in $ is:'#{price_USD }'"
end


puts "What is your name?"
var_name = gets

puts "What is your destination city?"
var_city = gets.strip 

puts "Enter the price in Bolivianos?"
var_price_bol = gets

puts prints_passenger_information"#{var_name}", "#{var_city}", "#{var_price_bol}"
puts "\tTest with default city value:"
puts prints_passenger_information"#{var_name}", "#{var_price_bol}"


