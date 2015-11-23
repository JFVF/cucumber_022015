#Create one class named Person
# This class should have one setter to the name.
# One getter to the greet for the person e.g. Hi <name>
# One setter and getter to a special message e.g. <name> Have a nice day.


class Person
  attr_accessor :name
  attr_accessor :message

  def greets
 	puts @greet = "Hi " + @name
  end
  
  def message
 	puts @messages = "Have a nice day " + @name
  end
end

item = Person.new
item.name="any name"
item.greets
item.message

