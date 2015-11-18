=begin
Create one class named Person
This class should have one setter to the name.
One getter to the greet for the person e.g. Hi <name>
One setter and getter to a special message e.g. <name> Have a nice day.
=end

class Person
	attr_reader:p_hi
	attr_writer:p_name
	attr_accessor:p_message
	
	def p_hi
      @p_hi = "Hi" 
    end  
end
juan_p = Person.new
juan_p.p_name = "Juan pablo"
puts juan_p.p_hi 
puts juan_p.p_message= juan_p.p_name = "Juan pablo" + " Have a nace day."