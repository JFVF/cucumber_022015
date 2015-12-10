=begin
Create 2 steps definition considering the argument received with two possible options.

Crate the step using both values and verify that both are recognized in the step definition.

(you can try to insert also any other value in order to see that other values are not matching)
=end

# Given(/^I have \$(100) in my Account$/) do |amount|
# 	puts amount
# end

# Given(/^I have \$(250) in my Account$/) do |amount|
# 	puts amount
# end


##################
Given (/I have deposited \$(.*) in my Account/) do |amount|
# TODO: code goes here
end
##################

=begin
Create 1 step definition that is going to expect only digits

Create 1 step definition that is going to expect only lower case characters

Create 1 step definition that is going to receive any character except digits.
=end

Given(/^I have \$(\d+) in my Account$/) do |amount|
	puts "The amount is #{amount}"
end

Given(/^The user ([a-z]+) is logged$/) do |user|
	puts "The user is #{user}"
end

Given(/^The destination city is (\D+)$/) do |city|
	puts "The city is #{city}"
end
