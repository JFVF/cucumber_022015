#h = {"a"=>"10", "2"=>"e"}

class My_hash
	attr_reader :h

	def drawn_hash
		puts 'Give me leght for the hash?'
		var_leght = gets.chomp.to_i
		var_body =""
		i = 0
		@h=Hash.new
		print var_leght
		while i < var_leght.to_i  do
		   puts 'Give me key to add?'
		   var_key = gets.chomp.to_s
		   puts 'Give me value to add?'
		   var_value = gets.chomp.to_s
		   @h.store var_key,var_value
		   i +=1
		end

		
	end	
	def pint_hash(h)
		p h
	end	
	def print_keys(h)
		p h.keys       
	end	
	def prin_values(h)
		p h.values
	end	
	def exist_value?(h,my_value)
		puts h.has_value?(my_value)
	end	
	def exist_key?(h,my_key)
		puts h.has_key?(my_key)

	end	

end
noe_hash = My_hash.new
noe_hash.drawn_hash
h_hash = noe_hash.h
noe_hash.pint_hash h_hash
noe_hash.print_keys h_hash
noe_hash.prin_values h_hash
puts 'Give me key to aks'
var_key=gets.chomp.to_s
noe_hash.exist_key? h_hash,var_key
puts 'Give me value to aks'
var_val=gets.chomp.to_s
noe_hash.exist_value? h_hash,var_val