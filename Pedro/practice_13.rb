class Item
	attr_accessor :item_name
	#attr_reader :item_name
	#attr_writer :item_name
	def initialize(item_name, quantiy)
		@item_name = item_name
		@quantiy = quantiy
	end
end

item = Item.new('tv', 7)
puts item.item_name
item.item_name = 'radio'
puts item.item_name	