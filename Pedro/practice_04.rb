class NamePrinter

	def self.print_name(name)
		puts "Your name is: #{name}"
	end

end

NamePrinter.print_name('Pedro David')

puts '----------- Next excercise -----------'

puts "What is your name?"
name = gets
puts "Hi #{name}!! How are you today?"

puts '----------- Next excercise -----------'

puts 'Give me a number: '
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{bigger}" 

puts '----------- Next excercise -----------'

puts 'Give me a number: '
number = gets.chomp.to_f
bigger = number * 100
puts "A bigger number is #{bigger}" 