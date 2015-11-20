class Hashes
	attr_reader :phash
	
	def create_hash
		puts "Create a Hash"
		print "Enter length for Hash > "
		length = gets.chomp.to_i

		@phash = Hash.new
		length.times do |time|
			print "Enter key [ #{ time + 1 } ] : "
			key = gets.chomp.to_sym

   		    print "Enter value [ #{ time + 1  }] : "
			value = gets.chomp
			@phash.store key,value
 		end
	end

	def print_keys(hash)
		puts "Hash has the following keys #{ hash.keys }" 
	end

	def print_values(hash)
		puts "Hash has the following values #{ hash.values }" 
	end

	def print_hash(hash)
		puts "Hash is: #{ hash.inspect }" 
	end

	def exist_key?(hash, key)
		puts "Hash contains ':#{ key }' as key? #{ hash.has_key?(key) }"
	end

	def exist_value?(hash, value)
		puts "Hash contains '#{ value }' as value? #{ hash.has_value?(value) }"
	end
end

h = Hashes.new
h.create_hash
h.print_keys h.phash
h.print_values h.phash
h.print_hash h.phash
h.exist_key?(h.phash, :uno)
h.exist_value?(h.phash, 1)