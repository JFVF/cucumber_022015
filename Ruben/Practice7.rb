class Practice
  attr_accessor :name
  attr_accessor :age
  attr_accessor :result
  
  def calculateHours  
    @result = @age < 65 ? (@age * 12 * 30 * 24).to_s : "#{age} result cannot be calculated"
  end

  def validateAge
       case @age
       when 0..5 then puts "you are a baby"    
       when 6..12 then puts "you are a child" 
       when 13..21 then puts "you are a young people" 
       when 22..35 then puts "you are adult" 
       else @result
     end
  end
end

person = Practice.new
person.name = "Ruben"
person.age = 33
puts person.calculateHours
puts person.validateAge

require 'singleton'
class Base
  include Singloton
  def initialize
end