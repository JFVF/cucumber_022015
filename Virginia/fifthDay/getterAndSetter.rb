class Item
  #attr_reader:item_name				#allow to get the value from out 
  #attr_writer:item_name				#allow to set the value from out 
  attr_accessor:item_name				#allow to get an set the value from out 
  def initialize(quantity)
   # @item_name = item_name
    @quantity = quantity
  end
  
 # def item_name
  #  @item_name
  #end
end

#item = Item.new("tv",1)
#puts item.item_name
item = Item.new(1)
puts item.item_name="radio"
