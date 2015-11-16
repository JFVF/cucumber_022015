#OOP practice 2 - simple class playing with the class variable and OOP

class Father
	@@amount_money_father = 1000

	def self.get_amount
		@@amount_money_father
	end
end 

class Child_1 < Father
	@@amount_money_child_1 = 100
	@@amount_money_father = @@amount_money_father - @@amount_money_child_1	

	def self.get_amount
		@@amount_money_child_1
	end
end

class Child_2 < Father
	@@amount_money_child_2 = 100
	@@amount_money_father = @@amount_money_father - @@amount_money_child_2	

	def self.get_amount
		@@amount_money_child_2
	end
end

class Child_3 < Father
	@@amount_money_child_3 = 300
	@@amount_money_father = @@amount_money_father - @@amount_money_child_3	

	def self.get_amount
		@@amount_money_child_3
	end
end


puts "The total amount the Child_1 is taking: #{Child_1.get_amount}"
puts "The total amount the Child_2 is taking: #{Child_2.get_amount}"
puts "The total amount the Child_3 is taking: #{Child_3.get_amount}"
puts "The total amount from Father is: #{Father.get_amount}"
