require 'Singleton'

class User
	include Singleton
	attr_accessor:user_hash
	attr_accessor:total_priced_hash

	def initialize
		@user_hash = Hash.new
		@total_priced_hash = Hash.new

		fill_user_hash
		fill_total_priced_hash
	end

	def fill_user_hash
		@user_hash.store(001,'Jimmy')
		@user_hash.store(002,'Agapito')
		@user_hash.store(003,'Josenildo')

	end

	def fill_total_priced_hash
		@total_priced_hash.store(001,1000)
		@total_priced_hash.store(002,500)
		@total_priced_hash.store(003,150)
	end
end
