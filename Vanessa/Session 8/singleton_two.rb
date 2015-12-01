=begin
Singleton second example
=end

class Base
	
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

def singleton_example
	@singleton_example ||= Base.new
end

puts singleton_example.any
puts singleton_example.object_id
puts singleton_example.some
puts singleton_example.object_id
puts Base.new.object_id
puts Base.new.some

