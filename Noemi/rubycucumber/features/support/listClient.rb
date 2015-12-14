class Registor
	attr_accessor :h_u,:h_p
	def initialize	
		
	end
	def print_lists
		p @h_u
		p @h_p
	end
	def add_client(id,name_c,price_c)
		@h_u=Hash.new		
		@h_p=Hash.new
		@id_c= id.to_i	
		@h_u[@id_c]= name_c
		@h_p[@id_c] = price_c.to_s
		@h_u.inspect
		@h_p.inspect
	end
	def ask name_c
	
		@name_to_ask= name_c.to_s
		@price_cliente=0
		if @h_u.has_value?(@name_to_ask)			
 			@id_cliente = @h_u.key(@name_to_ask)
 			@price_cliente = @h_p[@id_cliente]
 		end
 		return @price_cliente.to_s
	end
end
def registor_example
	@registor_example ||= Registor.new
end