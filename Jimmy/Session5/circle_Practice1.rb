# Simple Circle class

class Circle
	
	def initialize (radius)
		@radius = radius
	end

	def area
		puts "The area is: #{@radius * 2 * Math::PI}"
	end

	def perimeter
		puts "The perimeter is: #{@radius*@radius*Math::PI}"
	end
end

print("Enter the radius:")
radius = gets.chomp.to_i
circle = Circle.new (radius)

circle.area
circle.perimeter