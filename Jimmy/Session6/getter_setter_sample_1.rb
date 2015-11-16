#getter_setter 

class Item
	#attr_reader:item_name
	#attr_writer:item_name
	attr_accessor:item_name #both reader and writter

  def initialize( quantity)
    #@item_name = item_name
    @quantity = quantity

  end
=begin
 def item_name
 	 @item_name
 end	
=end
  
end

item = Item.new(1)
item.item_name = "radio"
puts item.item_name