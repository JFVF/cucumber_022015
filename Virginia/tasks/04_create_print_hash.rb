class HashTest
  def createHash()
    puts "Enter length of the hash:"
    hash_tam = gets.chomp.to_i
    created_hash = Hash.new

    hash_tam.times do | value_1 | 
        puts "Enter user name for hash position #{value_1}:"
        key = gets.chomp
        puts "Enter value for user name: #{key}"
        value = gets.chomp 
        created_hash[key] = value
    end 
    return created_hash
  end

  def printHashKeys(hash)
    puts "The keys for hash are:"
    p hash.keys
  end

  def printHashValues(hash)
    puts "The values for hash are:"
    p hash.values
  end

  def existsInsertedKeyInHash(hash)
    puts "Enter a key to verify if it exists in Hash:"
    key_value = gets.chomp
    if hash.has_key?(key_value)
      puts "***Inserted key exists in Hash"
    else 
      puts "***Inserted key doesn't exist in Hash"
    end  
  end

  def existsInsertedValueInHash(hash)
    puts "Enter a value to verify if it exists in Hash:"
    value_value = gets.chomp
    if hash.has_value?(value_value)
      puts "***Inserted value exists in Hash"
    else 
      puts "***Inserted value doesn't exist in Hash"
    end
  end
end

hashTest = HashTest.new
hash = hashTest.createHash
p hash 
hashTest.printHashKeys(hash)
hashTest.printHashValues(hash)
hashTest.existsInsertedKeyInHash(hash)
hashTest.existsInsertedValueInHash(hash)