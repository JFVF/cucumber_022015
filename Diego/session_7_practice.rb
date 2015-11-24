# Create a class with :
# method to create the hash, the method should ask for the length of the hash
# 	According the length defined should ask to the user for the key and for the value.
#  Use a getter to obtain the hash created in the method
# Method to print the hash key
#  Method to print the hash values
# Method to print the hash
# Method to define is a key inserted by the user, exists on the hash.
# Method to define is a value inserted by the user, exists on the hash.
# Instance the class and call to the method to create the hash
# Using the returned hash,  call to the other methods with this argument.


class Hash
 attr_reader :item_key
  def hash_key(item_key, value)	#Print hash key
    p Hash.keys
  end
  def has_value(item_key, value)	#Print hash value
    p Hash.values
  end
  def hash_hash(item_key, value)	#Print hash
    p Hash
  end

  def has_key?(item_key, value)	#key inserted
    Hash.has_key?(@item_key)
  end

  def initialize(item_key, value)
    @item_key = item_key
    @value = value
  end
  
end

puts "length: "
length = gets.chomp
length.times do |

hash = Hash.new(@item_key,@value)
puts 



# puts hash.length     

# puts item.item_key


# salaries = {"bob" =>10.9,
# 			"larry"=>7.5,
# 			"jimmy"=>6.0,
# 			"jerry"=>6.5}
# salaries.inspect
# mySalaryArray = salaries.select{|name,salary| name == "bob"}
# p mySalaryArray #prints  [["larry", 7.5], ["bob", 10.9]]