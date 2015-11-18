=begin
Create a class with :
1. method to create the hash, the method should ask for the length of the hash
	According the length defined should ask to the user for the key and for the value.
 		1. Use a getter to obtain the hash created in the method
2. Method to print the hash key
3. Method to print the hash values
4. Method to print the hash
5. Method to define is a key inserted by the user, exists on the hash.
6. Method to define is a value inserted by the user, exists on the hash.
7. Instance the class and call to the method to create the hash
	using the returned hash,  call to the other methods with this argument.
=end

class HashPractice
	attr_reader :hash_created

	# def initialize
	# 	@hash_created = {}
	# end

	def create_hash
		@hash_created = {}
		puts 'Insert the length of the hash:'
		size = gets.chomp.to_i

		size.times do |position|
			puts "Insert the key number #{position}:"
			key = gets.chomp

			puts "Insert the value number #{position}:"
			value = gets.chomp

			@hash_created[key] = value
		end
	end

	def print_hash_keys(hash)
		puts hash.keys
	end

	def print_hash_values(hash)
		puts hash.values
	end

	def print_hash(hash)
		puts hash
	end

	def search_key(hash)
		puts 'Insert key to search for:'
		key = gets.chomp
		if hash.has_key?(key)
			puts "They key '#{key}' exists in the hash"
		else
			puts "They key '#{key}' does not exists in the hash"
		end
	end

	def search_value(hash)
		puts 'Insert value to search for:'
		value = gets.chomp
		if hash.has_value?(value)
			puts "They value '#{value}' exists in the hash"
		else
			puts "They value '#{value}' does not exists in the hash"
		end
	end
end

hash = HashPractice.new
hash.create_hash
hash_to_use = hash.hash_created

puts "\n"
puts 'The keys in the hash are:'
hash.print_hash_keys(hash_to_use)

puts "\n"
puts 'The values in the hash are:'
hash.print_hash_values(hash_to_use)

puts "\n"
puts 'The hash created is:'
hash.print_hash(hash_to_use)

puts "\n"
puts 'Search a key'
hash.search_key(hash_to_use)

puts "\n"
puts 'Search a value'
hash.search_value(hash_to_use)
