#Polygon 

class Polygon
  @@sides = 10
  def self.sides
    @@sides
  end
end

class Triangle < Polygon
  @@sides = 3
end

class Rectangle < Polygon
  @@sides = 9
end

#puts Triangle.sides 
#puts Rectangle.sides
puts Polygon.sides
