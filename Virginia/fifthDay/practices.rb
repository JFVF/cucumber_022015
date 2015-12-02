class Person
  attr_reader:greet		   #get		
  attr_writer:person_name  #set
  attr_accessor:message	   #set and get	

  def greets()
    @greet = "Hi " + @person_name
  end

end

person = Person.new()
person.person_name="Virginia"
msg = person.message=" Have a nice day." 
puts person.greets + msg 
