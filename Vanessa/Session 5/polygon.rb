=begin
Example of class variables
=end

class Polygon
	@@sides = 10

	def self.sides
		@@sides
	end
end

puts Polygon.sides

class Triangle < Polygon
	@@sides = 3
end

puts Triangle.sides
puts Polygon.sides

class Rectangle < Polygon
	@@sides = 4
end

puts Polygon.sides