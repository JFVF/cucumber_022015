class Circle
	def calculate_area(radius)
		area = (radius ** 2 * Math::PI).round(3)
		puts "Area is: #{ area }"
	end

	def calculate_perimeter(radius)
		perimeter = (radius ** 2 * Math::PI).round(3)
		puts "Perimeter is: #{ perimeter }"
	end
end