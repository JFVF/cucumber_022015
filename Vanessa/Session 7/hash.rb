=begin
Hash examples
=end

elements = Hash.new
elements['H'] = 'Hydrogen'
elements['He'] = 'Helium'
elements['Li'] = 'Lithium'

p elements['H']
p elements.length
p elements.values
p elements.keys
p elements

##################################################
puts "\n"
toppings = Hash['pancakes','syrup','Pizza','Pepper','Cereal','Sugar']
p toppings

puts "\n"
salaries = {'bob' =>10.9,
			'larry'=>7.5,
			'jimmy'=>6.0,
			'jerry'=>6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
mySalaryArray = salaries.select{|name,salary| name == 'larry'}
p mySalaryArray

##################################################
puts "\n"
my_hash = {
  :a => 'Artur',
  :l => 'Linda',
  :r => 'Ryan',
  :z => 'Zach'
}
p my_hash

##################################################
puts "\n"
my_hash = {
  a:  'Artur',
  l:  'Linda',
  r:  'Ryan',
  z:  'Zach'
}
p my_hash
p my_hash[:a]





