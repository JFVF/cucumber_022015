=begin
Write a feature file that contains 2 scenarios, each one with steps that need a 
step definition with:
1. Question mark modified for singular and plurar
2. Multiple captures of data
3. Noncapturing group

E.G. 1 scenario with a sentence to eat # of apples (aple if it is one), 
another with the amount of money to pay and the type of payment(credit card, 
money,etc)and some final step that can be described with different words. 
=end

Given(/^I have to eat "(\d+)" "([a-z]+)?"$/) do |number, fruit|
	puts "Fruit: #{fruit}"
	puts "Quantity: #{number}"
end

Given(/^I want to buy (\d+) computers$/) do |items|
	puts "Computer: #{items}"
end

Given(/^the payment is done using ([a-z\-]+)$/) do |type|
	puts "Payment type: #{type}"
end

When(/^I give the \$(\d+)$/) do |money|
	puts "Money given: #{given}"
end

Then(/^I want to receive the (?:invoice|bill)$/) do
end