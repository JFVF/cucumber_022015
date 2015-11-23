=begin
Example of global variables
=end

$example_of_global = 6

module ModuleTest
	puts 'Inside module'
	puts $example_of_global
end

def method_test
	puts 'Inside method'
	puts $example_of_global
end

class Some_test
	puts 'Inside class'
	puts $example_of_global
end

method_test
some = Some_test.new
puts 'Inside top level'
puts $example_of_global
puts global_variables.include? :$example_of_global