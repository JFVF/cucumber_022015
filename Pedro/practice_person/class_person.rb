class Person
	attr_writer :name
	attr_accessor :special

	#@name
	#@special

	def greeting
		puts "Hi #{@name}"
	end

	def special_message
		puts "#{@special}, have a nice day!"
	end
end


person = Person.new
person.name = 'Pedro David'
person.greeting

person.special = 'Rodrigo'
person.special_message

puts person.special
puts person.name




