class Registor
	attr_accessor :h_u,
	def initialize	
		
	end
	def print_list
		p @h_u
	
	end
	def get_list my_lits
		@h_u = 	my_lits
		#h3 = Hash[a3.map {|key, value| [key, value]}]
		@h_u = Hash[my_lits.map {|key, value| [key, value]}]
	end
	def ask name_c
		@name_to_ask= name_c.to_s		
		@mensage = "Not Found"
		if @h_u.has_value?(@name_to_ask)			
 			@mensage = "Found"
 		else
 			puts "item is not found"
 		end
 		return @mensage
	end
end
def registor_example
	@registor_example ||= Registor.new
end