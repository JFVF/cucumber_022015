module ListHandler
	def ListHandler.convert_to_array(list)
		array_elements = list.split(",")
		result = array_elements.map { |e| e.strip }
	end
end