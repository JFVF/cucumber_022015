#Getter and setter

cars = {
'altima' => 'nissan',
'camry' => 'toyota',
'rx7' => 'mazda'
}

puts cars['rx7'] 



elements = Hash.new  # or {}
elements['H'] = 'Hydrogen' #associate the key 'H' to the value 'Hydrogen'
elements['He'] = 'Helium'
elements['Li'] = 'Lithium'
p elements['H']       # prints "Hydrogen"
p elements.length     # prints 3
p elements.values     # prints ["Lithium", "Helium", "Hydrogen"]
p elements.keys       # prints ["Li", "He", "H"]
p elements            # prints {"Li"=>"Lithium", "He"=>"Helium", "H"=>"Hydrogen"}


puts "*****************"
puts "select"
puts "*****************"


salaries = {"bob" =>10.9,
      "larry"=>7.5,
      "jimmy"=>6.0,
      "jerry"=>6.5}
salaries.inspect
#mySalaryArray = salaries.select{|name,salary| salary > 7.0}
mySalaryArray = salaries.select{|nameUser, salary| salary > 7.0}

p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]

#synbols
puts "*****************"
puts "symbols"
puts "*****************"

my_hash = {
  :a => "Artur",
  :l => "Linda",
  :r => "Ryan",
  :z => "Zach"
}
p my_hash


my_hash = {
  a:  "Artur",
  l:  "Linda",
  r:  "Ryan",
  z:  "Zach"
}
p my_hash

puts "*****************"
puts "hashes"
puts "*****************"

h = {"a"=>"10", "2"=>"e"}
  puts h.has_key?("2")
  puts h.has_key?("5")
  puts h.has_value?("10")
  puts h.has_value?("5")




=begin
  
Create a class with :
* method to create the hash, the method should ask for the length of the hash
  According the length defined should ask to the user for the key and for   the value.
 Use a getter to obtain the hash created in the method
* Method to print the hash key
* Method to print the hash values
* Method to print the hash
* Method to define is a key inserted by the user, exists on the hash.
Method to define is a value inserted by the user, exists on the hash.
Instance the class and call to the method to create the hash
Using the returned hash,  call to the other methods with this argument.

  
=end

 class TestHash
  attr_reader :hash
  def CreateHash
    @hash={}
    puts "**** create the hash"
    puts "Please enter the lenght for the hash"
    hash_lenght=gets.chomp.to_i
    
    hash_lenght.times do |position|
    puts "Please insert the key for the position [#{position}]"
      key = gets.chomp
    puts "Please insert the value for the position [#{position}]"
      value = gets.chomp
      @hash.store key, value
    end 
    return @hash
  end

  def Printkey(hashparameter)
    puts hashparameter.keys
  end
  def PrintValues(hashparameter)
    puts hashparameter.values
  end

  def PrintHash hashparameter
    p hashparameter
  end

  def Existskey hashparameter
     puts "Please enter a key to verify that key exists"
      key = gets.chomp
      hashparameter.has_key?(key)
  end    

  def ExistsValue hashparameter
    puts "Please enter a value to verify that value exists"
      value = gets.chomp
    hashparameter.has_value?(value)
  end  
 end

#Instance the class and call to the method to create the hash
 hashtest = TestHash.new
 parameter = hashtest.CreateHash
 #call the other methods
 puts "**********  results: other methods *********"
 puts "Print keys"
 hashtest.Printkey parameter
 puts "Print values"
 hashtest.PrintValues parameter
 puts "Print hash"
 hashtest.PrintHash parameter
 puts "verify if the key exists "
 puts hashtest.Existskey parameter
 puts "verify if the value exists "
 puts hashtest.ExistsValue parameter




