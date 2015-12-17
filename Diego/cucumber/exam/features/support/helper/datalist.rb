module Datalist

  def Datalist.listOfItems
      @itemList = ["item1","item2","item3"]
      return @itemList
  end
  
  def Datalist.find(item)
    @found = @itemList.include?(item)
    return @found
  end
end