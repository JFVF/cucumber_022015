#date 11/13/2015
=begin
Create a ruby class with including two methods :
	One method to calculate and print the area of a circle :
radius * 2 * PI
	One method to calculate and print the perimeter 	of a circle 
radius * radius * PI
Call to the methods in order to see the result printed
=end

class Circule

  def initialize(radio)
      #Code initialized when class is instanced
      @radio=radio.to_f
  end
		
  def get_area
    my_area=@radio * 2* Math::PI
    puts "area:" + my_area.to_s
  end
  def get_perimeter
  	my_perimeter = @radio * @radio * Math::PI	
  	puts "perimeter:" + my_perimeter.to_s
  end
end
mycircule= Circule.new 10
mycircule.get_area  # " My first instance method"
mycircule.get_perimeter  # " My first instance method"
#global variable -nivel de test case