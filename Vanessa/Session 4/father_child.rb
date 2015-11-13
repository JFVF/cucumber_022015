=begin
Create a class named father

father should have some amount of money. 

Add 3 different child classes that are going to take some of the money.

Print the amount that each child is taking

Print the amount of money that Father have at the end.
=end

class Father
	@@money
	def initialize(money)
		@@money = money
	end
end

class Child_1 < Father
	def self.take_money
		amount = rand(1..10)
		puts "Child 1 is taking #{amount}"
		left = @@money - amount
		puts "Father now has #{left}"
		@@money = left
	end
end

class Child_2 < Father
	def self.take_money
		amount = rand(1..10)
		puts "Child 2 is taking #{amount}"
		left = @@money - amount
		puts "Father now has #{left}"
		@@money = left
	end
end

class Child_3 < Father
	def self.take_money
		amount = rand(1..10)
		puts "Child 3 is taking #{amount}"
		left = @@money - amount
		puts "Father now has #{left}"
		@@money = left
	end
end

Father.new(30)
Child_1.take_money
Child_2.take_money
Child_3.take_money