class Control_Statement
    attr_writer:name  #set
    attr_reader:array_tam  #set
    attr_reader:created_array  #set

  def createArrayWithPersonNames()
    puts "Enter the quantity of person:"
    @array_tam = gets.chomp.to_i
    @created_array = Array.new

    @array_tam.times do | value_1 | 
        puts "Enter person's name for position:{value_1}:"
        value = gets.chomp 
        @created_array.push(value)
    end 
    return @created_array
  end

  def printNameAndIdOfGivenArray(array)
    array.each_with_index {|name, id| puts "The person=#{name} has a Id=#{id}"}
  end

  def getUpperNameArrayOfAllRegisteredPersons()
      upperName_array = Array.new
      @created_array.each_with_index {|name, id| 
        upper_name = name.upcase
        upperName_array.push(upper_name)
      } 
    return upperName_array
  end

  def printGreetingForAllRegisteredPersons
    puts "Print greeting to each registered persons :"
    created_array.each {|name| puts "Good bye '#{name}'"}
  end
end

statement = Control_Statement.new()
statement.createArrayWithPersonNames

upper_array = statement.getUpperNameArrayOfAllRegisteredPersons
puts "Print Name/Id for all registered persons after updating their names to Uppercase:"
statement.printNameAndIdOfGivenArray(upper_array)

statement.printGreetingForAllRegisteredPersons