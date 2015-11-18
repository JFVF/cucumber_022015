=begin
Example of getters and setters
=end

class Item
	# Both attr_* can be replaced by attr_accessor
	# attr_reader :item_name
	# attr_writer :item_name

	attr_accessor :item_name

	def initialize(quantity)
		@quantity = quantity
	end
end

item = Item.new(1)
puts item.item_name = 'radio'

