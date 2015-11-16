=begin
Create a class named father
 father should have some amount of money. 
Add 3 different child classes that are going to take some of the money.
Print the amount that each child is taking
Print the amount of money that Father have at the end.
date 11/13/2015
=end
class Father
	@@father_money=100
	def self.money 
      @@father_money      
  end

end
puts Father.money

class Child < Father 
  def take_money_child()
    take_money=rand(1 .. 50) 
    puts "Father has $ #{@@father_money} ... taking #{take_money}"  
      if take_money < @@father_money
        @@father_money = @@father_money - take_money
      else
        puts "Child asks for more money that father has, giving the remaining money" 
        @@father_money = 0
      end
   end 
end

Child_Juan = Child.new
Child_Juan.take_money_child

Child_Pedro = Child.new 
Child_Pedro.take_money_child

Ana = Child.new
Ana.take_money_child

puts Father.money