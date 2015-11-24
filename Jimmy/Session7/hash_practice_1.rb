#hashes methods practice 1

class HashMethod
	attr_reader:any_hash
	def initialize
		@any_hash = Hash.new 
	end

	def createHash
		print "Enter the length of the hash:"
		hashLength = gets.chomp.to_i

		fill_the_hash hashLength

	end

	def fill_the_hash(hashLength)
		
		
		hashLength.times do

			print "Enter the key: "	
			key = gets.chomp

			print "Enter the value: "
			value = gets.chomp

			#just verifying if the keys and values are in the hash
			puts "The key #{key} already exist? #{@any_hash.has_key?(key)}"
			puts "The value #{value} already exist? #{@any_hash.has_value?(value)}"

			any_hash.store key,value

		end	
	end

	def printKeys (hash)
		p hash.keys
	end

	def printValues (hash)
		p hash.values
	end

	def print (hash)
		p hash
	end


end

hashMethods = HashMethod.new
hashMethods.createHash

hash = hashMethods.any_hash

hashMethods.printKeys hash
hashMethods.printValues hash
hashMethods.print hash


