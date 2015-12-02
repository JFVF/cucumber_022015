class People
	attr_accessor :quantity, :people_hash

	def initialize(quantity)
		@quantity = quantity
		@people_hash = Hash.new
	end

	def register_people(quantity)
		for i in 1..quantity
			print "Enter person ID [#{i}]: "
			id = gets.chomp
			print "Enter person Name [#{i}]: "
			name = gets.chomp
			@people_hash.store id, name
		end
	end

	def print_get_upper_case_name
		@people_hash.each_with_index do |(key,value), index|
			puts "Name: #{ value } - position: #{ index }"
		end
		
		return @people_hash.map{ |key, value| value.upcase! }		
	end

	def say_good_bye(names)
		names.each do |name|
			puts "Good bye #{ name }"
		end
	end
end

print "Enter quantity of people to register: "
quantity = gets.chomp.to_i
people = People.new(quantity)
people.register_people(people.quantity)
puts ""
names = people.print_get_upper_case_name
puts ""
people.say_good_bye names