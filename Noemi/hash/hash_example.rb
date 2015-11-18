salaries = {"bob" =>10.9,
			"larry"=>7.5,
			"jimmy"=>6.0,
			"jerry"=>6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary > 7.0}
p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]
my_hash = {
  a:  "Artur",
  l:  "Linda",
  r:  "Ryan",
  z:  "Zach"
}
p my_hash
p my_hash[:a]
h = {"a"=>"10", "2"=>"e"}
p h.has_key?("2")
p h.has_key?("5")
