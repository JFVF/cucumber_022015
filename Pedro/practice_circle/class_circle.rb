class Circle

	def initialize(radius)
		@radius = radius
	end

	def area 
		puts "#{@radius.to_f * 2 * Math::PI}"
	end

	def perimeter
		result = @radius.to_f ** 2 * Math::PI
		puts result
	end

end

circle = Circle.new(10)

circle.area
circle.perimeter

