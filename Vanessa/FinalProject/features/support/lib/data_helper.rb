
module DataHelper

	def self.get_hash_with_keys(hash, hash_expected, ignore = false)
		case ignore
			when true
			when false
				puts 'HASH'
				puts hash
				puts 'HASH'
				puts 'EXPECTED HASH'
				puts hash_expected
				puts 'EXPECTED HASH'
				ary1 = hash.to_a
				ary2 = hash_expected.to_a
				puts 'INTERSECTION'
				puts ary1 & ary2
			else
		end
	end
		
end


