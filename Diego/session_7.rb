# Simple hash of cars and their makers

# cars = {
# 'altima' => 'nissan',
# 'camry' => 'toyota',
# 'rx7' => 'mazda'
# }
# puts cars['rx7'] #  =>   mazda

# # As an object : Hash.new
# # Using braces : {}


#############################################################
#Creating and interacting with a hash :
# elements = Hash.new  # or {}
# elements['H'] = 'Hydrogen' #associate the key 'H' to the value 'Hydrogen'
# elements['He'] = 'Helium'
# elements['Li'] = 'Lithium'
# p elements['H']       # prints "Hydrogen"
# p elements.length     # prints 3
# p elements.values     # prints ["Lithium", "Helium", "Hydrogen"]
# p elements.keys       # prints ["Li", "He", "H"]
# p elements            # prints {"Li"=>"Lithium", "He"=>"Helium", "H"=>"Hydrogen"}


###############################################################
#You can also create Hashes with square brackets by prefixing with "Hash":
# toppings = Hash["pancakes","syrup","Pizza","Pepper","Cereal","Sugar"]
# p toppings

##############################################################
# The "select" method populates a new hash with members which meet a criteria
salaries = {"bob" =>10.9,
			"larry"=>7.5,
			"jimmy"=>6.0,
			"jerry"=>6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| name == "bob"}
p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]

#############################################################
# Symbols are simply constant names that you don’t have to  predeclare and that are guaranteed to be unique

# my_hash = {
#   a:  "Artur",
#   l:  "Linda",
#   r:  "Ryan",
#   z:  "Zach"
# }
# p my_hash


# my_hash = {
#   :a => "Artur",
#   :l => "Linda",
#   :r => "Ryan",
#   :z => "Zach"
# }
# p my_hash

#############################################################