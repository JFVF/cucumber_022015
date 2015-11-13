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

class Child_ana < Father
  take_money=30
  puts "taking #{take_money}"
  @@father_money = @@father_money - take_money
end

class Child_Pedro < Father
  take_money=50
  puts "taking #{take_money}"
  @@father_money = @@father_money - take_money

end

class Child_Juan < Father
  take_money=10
  puts "taking #{take_money}"	
  @@father_money = @@father_money - take_money

end
puts Father.money