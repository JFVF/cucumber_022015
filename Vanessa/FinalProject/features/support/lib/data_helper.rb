
module DataHelper

	def self.get_hash_with_keys(hash, hash_expected, ignore = false)
		case ignore
			when true
			when false
				keys_expected = hash.keys & hash_expected.keys
				hash_created = Hash.new

				hash.each_pair do |key, value|
					keys_expected.each do |key_expected|
						if key_expected == key
							hash_created.store(key, value)
						end
					end
				end

				puts hash_created

				# end


				# puts ary1 & ary2
				# puts '-----------------------'
				hash_created
			else
				raise 'Unknown value'
		end
	end

	def self.equal?(object_actual, object_expected)
	end
		
end


