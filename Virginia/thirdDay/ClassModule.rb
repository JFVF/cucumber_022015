#require_relative 'modules.rb'
require './modules'
class Class_Module
	include Greets
	include Say_bye
end

testA=Class_Module.new
puts "here.."
testA.one_case
testA.two_case