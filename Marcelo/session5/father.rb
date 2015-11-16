class Father
	@@money = 500
	def self.money
		@@money
	end

	puts "Initial money from Father: #{ Father.money }"
end

class Child01 < Father
	@take01 = 100
	@@money -= @take01

	puts "Amount of Money Child01 takes: #{ @take01 } -- Money after child 01: #{ Child01.money }"
end

class Child02 < Father
	@take02 = 10
	@@money -= @take02
	
	puts "Amount of Money Child02 takes: #{ @take02 } -- Money after child 02: #{ Child02.money }"
end

class Child03 < Father
	@take03 = 50
	@@money -= @take03
	puts "Amount of Money Child01 takes: #{ @take03 } -- Money after child 03: #{ Child03.money }"
end

puts "Remaining Father money: #{ Father.money }"