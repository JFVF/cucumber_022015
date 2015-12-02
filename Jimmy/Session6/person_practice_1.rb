#class Person

class Person
	attr_writer:name
	attr_reader:greet
	attr_accessor:special_message

	def get_greettings
		@greet =  "Hi #{@name}"
	end

	def get_special_message
		@special_message = "#{@name} Have a nice day."
	end 

end

person = Person.new
person.name = "JV"

# Initializing the attributes by methods
person.get_greettings
person.get_special_message

# Getting from the attributes
puts person.greet
puts person.special_message







