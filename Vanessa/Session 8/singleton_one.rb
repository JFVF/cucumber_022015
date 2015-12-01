=begin
Singleton example
=end

require 'singleton'
class Base
	include Singleton
	
	def initialize
		@value = 0
	end

	def any
		@value = 10
	end

	def some
		@value
	end
end

b1 = Base.instance
# b1 = Base.new # not permited
puts b1.any

b2 = Base.instance
puts b2.some
