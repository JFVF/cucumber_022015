require_relative 'circle'

puts "Calculate area and perimeter of a Circle"

print "Enter circle radius: "
radius = gets.chomp.to_f

circle = Circle.new
circle.calculate_area radius
circle.calculate_perimeter radius