require_relative 'module_greetings'
require_relative 'module_bye'

class Person

	include Greetings
	include Bye

end

person = Person.new

person.print_hi
person.print_good_night
person.print_good_afternoon
person.print_good_bye
person.print_see_you_later
person.print_take_care

