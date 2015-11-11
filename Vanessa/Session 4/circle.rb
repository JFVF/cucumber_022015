=begin
Create a ruby class with including two methods :

	One method to calculate and print the area of a circle :
radius * 2 * PI

	One method to calculate and print the perimeter of a circle 
radius * radius * PI

Call to the methods in order to see the result printed

=end

class Circle
	PI = 3.1416
	def area(radius)
		formula = radius * 2 * PI
	end

	def perimeter(radius)
		formula = radius * radius * PI
	end
end