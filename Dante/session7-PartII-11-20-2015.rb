#Getter and setter

a=5
puts result = if a == 4 then a = 7 else a=10 end


case 
 when a < 5 then puts "#{a} is less than 5"    
 when a == 5 then puts "#{a} equals 5" #WARNING with = 
 when a > 5 then puts "#{a} is greater than 5" 
 end



case a
 when 0..4 then puts "#{a} is less than 5"    
 when 5 then puts "#{a} equals 5" 
 when 6..10 then puts "#{a} is greater than 5" 
 else puts "unexpected value #{a} " 
end


top = 6
for i in 1..top
 puts "hi #{i}"
end

=begin
Create a class that is going to receive :
name, age (use getter and setter concept)
Method to calculate years in hours only if years is lower than 35, otherwise return a message that age cannot be calculated
Method that consider the values obtained from the previous. Use short-if expression method, 
when value is between 0-5 year(converted to hours) print you are a baby
when value is between 6-12 year(converted to hours) print you are a child
when value is between 13-21years(converted to hours) print you are a young people
when value is between 22- 35(converted to hours) print you are adult
Otherwise print the message obtained from previous method.
  

=end

puts "******************"
puts "practice "
puts "******************"


class Controls

  attr_accessor :name
  attr_accessor :age

  def calculateYearsInHours age
      result = if age < 35 then age*24*365  else "age cannot be calculated" end
  end

  def ConsiderValues age
    case age
    when 0..5 then puts "#{calculateYearsInHours age} you are a baby"
    when 6..12 then puts "#{calculateYearsInHours age} you are a child"
    when 13..21 then puts "#{calculateYearsInHours age} you are a young person"
    when 22..35 then puts "#{calculateYearsInHours age} you are an adult"
    else puts calculateYearsInHours
    end
  end
end

control = Controls.new
puts "Please enter name"
control.name= gets.chomp.to_s
puts "Please enter age"
control.age= gets.chomp.to_i

#calling the methods... 
puts "print the age in hours"
puts control.calculateYearsInHours control.age
puts "evaluate age... "
control.ConsiderValues control.age
