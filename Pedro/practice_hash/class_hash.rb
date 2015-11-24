class MultiUseHash

	def add_key_and_value(hash, key, value)
		hash.store(key, value)
	end

	def print_hash_keys(hash)
		hash.keys.each { |key| puts key }
	end

	def print_hash_values(hash)
		hash.values.each { |value| puts value }
	end

	def print_hash(hash)
		puts hash
	end

	def hash_has_key?(hash, key)
		hash.has_key?(key)
	end

	def hash_has_value?(hash, value)
		hash.has_value?(value)
	end	

end


hash_manager = MultiUseHash.new
hash = {hamburguer: 'good', pizza: 'pizza'}

hash_manager.add_key_and_value(hash, :donuts, 'good')
hash_manager.add_key_and_value(hash, :sillpancho, 'very good')

hash_manager.print_hash_keys(hash)
hash_manager.print_hash_values(hash)
hash_manager.print_hash(hash)

puts hash_manager.hash_has_key?(hash, :sillpancho)
puts hash_manager.hash_has_value?(hash, 'good')