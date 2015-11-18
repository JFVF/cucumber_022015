=begin
class Person
Example of getters and setters
=end

class Person
	attr_writer :name
	attr_reader :greet
	attr_accessor :special_message

	def greet
		@greet = "Hi #{@name}"
	end
end

person = Person.new
puts person.name = 'Mary'

puts person.greet

puts person.special_message = "#{person.greet}, have a nice day"
