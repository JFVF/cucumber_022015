class Person
	attr_writer :name
	attr_reader :greet
	attr_accessor :special_message

	def name
		@name
	end 

	def set_greet
		@greet = "Hi #{ @name }"
	end
end

person = Person.new
person.name = "Mica"
puts "Person name: #{person.name}"

person.set_greet
puts person.greet

person.special_message = "Have a nice day #{ person.name }"
puts person.special_message