class Registor
	#include Singleton

	def initize
		@id=null
		@name = null
		@h_u=Hash.new		
		@h_p=Hash.new
	end
	def print_lists
		@h_u.inspect
		@h_p.inspect
	end
	def add_client(id,name_c,price_c)
		@h_u[id] = name_c.to_s
		@h_p[id] = price_c.to_s
		@h_u.inspect
		@h_p.inspect
	end

end
def registor_example
	@registor_example ||= Registor.new
end