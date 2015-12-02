class CheckingBlocks

	def creating_a_printing_block(name)
		puts 'What is your name?'
		yield name
		puts "Thank you! #{name}"
	end

end

block = CheckingBlocks.new

block.creating_a_printing_block('Pedro David') { |name| puts name }