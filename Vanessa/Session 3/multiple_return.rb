=begin
Example of multiple return
=end

def multiple_return_sintaxis(arg1)
	caculation_1 = arg1 * 100
	caculation_2 = arg1 / 100
	return caculation_1, caculation_2
end

value_added, value_divided = multiple_return_sintaxis(25)
puts "Value Added = #{value_added}, Value Divided = #{value_divided}"