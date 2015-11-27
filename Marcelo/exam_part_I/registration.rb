require_relative 'module_conversions'
class Registration
	attr_accessor :users, :id, :name
	include Conversions

	class << self
		def instance
			@instance ||= new
		end

		private :new
	end

	def initialize
		@users = Hash.new
		@id = nil
		@name = nil
	end

	def ask_username_and_id
		id = ask_value "ID"

		is_correct = false
		begin
			name = ask_value "name"
			if name =~ /^[a-z0-9]{1,11}$/
				is_correct = true
				puts "User name is correct"
			else
				puts "Invalid user name. It should contain lower characters and/or numbers"
			end
		end while !is_correct
		@users.store id, name
	end

	def ask_amount_users
		begin
			print "Please enter amount of users (between 3 and 15): "
			amount = gets.chomp.to_i
		end while ( ( amount > 15 ) || ( amount < 3 ) )
		puts ""

		amount.times do |i|
			puts "Information for user [ #{ i + 1} / #{amount} ]"
			ask_username_and_id
			puts ""
		end
	end

	def define_conversion_types
		conversion_types = Hash.new
		@users.each do |key, value|
			puts "conversion types: "
			puts "a) From minutes to hours"
			puts "b) From hours to days"
			puts "c) From days to month"

			print "Please enter conversion type for user < #{ value } > (e.g. c): "
			type = gets.chomp
			conversion_types.store value, type
		end
		return conversion_types
	end

	def show_calculation_results(conversion_types)
		conversion_types.each do |key, value|
			unit = get_unit(value)
			puts "The conversion type was #{ value } for user < #{ key } >"

			print "Insert the value in #{ unit }: "
			quantity = gets.chomp.to_i

			case value
			when "a"
				puts " #{quantity} #{unit} represent #{ convert_from_minutes_to_hours(quantity) } hours "	
			when "b"
				puts " #{quantity} #{unit} represent #{ convert_from_hours_to_days(quantity) } days "
			when "c"
				puts " #{quantity} #{unit} represent #{ convert_from_days_to_months(quantity) } months "
			end
		end
	end

	private 
	def ask_value(parameter)
		print "Please enter user #{parameter}: "
		input = gets.chomp
	end

	def get_unit(option)
		case option
		when "b" 
			return "hours"
		when "a" 
			return "minutes"
		when "c" 
			return "days"
		end
	end	
end

Registration.instance.ask_amount_users
conversion_types = Registration.instance.define_conversion_types
Registration.instance.show_calculation_results conversion_types