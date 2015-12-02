class Father
  @@amount_money = 20
  def self.money 
    @@amount_money
  end
end
puts Father.money   


class FirstChild < Father 
  @@amount_money = @@amount_money - 3            
end
puts FirstChild.money 


class SecondChild < Father
  @@amount_money = @@amount_money - 2
end
puts SecondChild.money


class ThirdChild < Father
  @@amount_money = @@amount_money - 1
end

puts ThirdChild.money
puts Father.money 