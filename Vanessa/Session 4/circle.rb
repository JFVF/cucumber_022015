=begin
Create a ruby class with including two methods :

	One method to calculate and print the area of a circle :
radius * 2 * PI

	One method to calculate and print the perimeter of a circle 
radius * radius * PI

Call to the methods in order to see the result printed

=end

class Circle
	def area(radius)
		puts formula = radius * 2 * Math::PI
	end

	def perimeter(radius)
		puts formula = radius * radius * Math::PI
	end
end

circle = Circle.new
radius = 5
puts "Area of a circle with radio #{radius}"
circle.area(radius)
puts "Perimeter of a circle with radio #{radius}"
circle.perimeter(radius)