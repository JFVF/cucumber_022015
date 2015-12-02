module Greets
	def one_case
		puts "Hi Friend"
		puts "good night"
		puts "good afternoon"
	end
end

module Say_bye 
	def two_case
		puts "good bye"
		puts "see you later"
		puts "take care"
	end
end

=begin
class TestA
	include Greets
	include Say_bye
end


testA=TestA.new
puts "here.."
testA.one_case
testA.two_case
=end