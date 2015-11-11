=begin
Example of a block
=end
def test_block
	puts 'You are in a method'
	yield
	puts 'You are again back to the method'
	yield
end

test_block {puts 'You are in a block'}

