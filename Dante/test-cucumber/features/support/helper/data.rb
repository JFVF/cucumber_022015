module Datalist

  def ListItem
      @itemList = ["data1","data2","data3"]
      return @itemList
  end
  
  def Exist(value)
    @val = @itemList.include? value
    return @val
  end
end