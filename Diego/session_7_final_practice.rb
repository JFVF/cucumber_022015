########### Create a class that is going to receive :
# name, age (use getter and setter concept)
# Method to calculate years in hours only if years is lower than 35, otherwise return a message that age cannot be calculated
# Method that consider the values obtained from the previous. Use short-if expression method, 
# when value is between 0-5 year(converted to hours) print you are a baby
# when value is between 6-12 year(converted to hours) print you are a child
# when value is between 13-21years(converted to hours) print you are a young people
# when value is between 22- 35(converted to hours) print you are adult
# Otherwise print the message obtained from previous method.


class Old
  attr_accessor :age
	def conv(ages)
		
		puts @age = ages.to_i * 365 * 12 * 31 * 24

	end
	  def age_hours
	  	case @age
  			when 0..16293600 then puts "You are Baby"    
  			when 19552320..39104640 then puts "you are a child" 
  			when 42363360...68433120 then puts "you are a young people" 
  			when 71691940...114055200 then puts "you are adult" 
  			else puts "cannot" 
		end
	end
end
	ages=Old.new
	ages.conv("5")
	ages.age_hours

