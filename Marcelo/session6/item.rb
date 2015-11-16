class Item
  attr_accessor :item_name

  def initialize(quantity = 10)
    @quantity = quantity
  end
end

item = Item.new "tv", 1 
puts item.item_name

item.item_name = "something"

puts item.item_name