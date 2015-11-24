class Statement
	attr_writer:name  #set
	attr_writer:age  #set

  def getAgeInHours()
  	result = @age <= 35? @age *365*24 : "The #{@age} age cannot be calculated"
    return result
  end

  def print_type_person()
  	age_hours = getAgeInHours()
  	case @age
  		when 0..5 then puts "you are a baby, you live #{age_hours} hours "    
 		when 6..12 then puts "you are a child, you live #{age_hours} hours " 
 		when 13..21 then puts "you are a young people, you live #{age_hours} hours " 
 		when 22..35 then puts "your are adult, you live #{age_hours} hours " 
 		else puts "#{age_hours} " 
	end
  end

end

statement = Statement.new()

puts "Enter your name:"
statement.name = gets.chomp
puts "How old are you?:"
statement.age= gets.chomp.to_i
statement.print_type_person()