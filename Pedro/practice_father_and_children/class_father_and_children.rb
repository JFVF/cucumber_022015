class Pedro
	$money = 100

	def amount_of_money
		puts $money
	end
end

class PedroDavid < Pedro
	def take_money_from_father(amount)
		$money -= amount
	end
end

class Ariel < Pedro
	def take_money_from_father(amount)
		$money -= amount
	end
end

class Rodrigo < Pedro
	def take_money_from_father(amount)
		$money -= amount
	end
end

class Erwin < Pedro
	def take_money_from_father(amount)
		$money -= amount
	end
end

pedro = Pedro.new
pedro_david = PedroDavid.new
ariel = Ariel.new
rodrigo = Rodrigo.new
erwin = Erwin.new

pedro.amount_of_money

pedro_david.take_money_from_father(10)
pedro.amount_of_money

ariel.take_money_from_father(1)
pedro.amount_of_money

rodrigo.take_money_from_father(5)
pedro.amount_of_money