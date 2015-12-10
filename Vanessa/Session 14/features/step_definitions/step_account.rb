Given(/^I have deposited "(\$\d+)" in my "(\w+)" Account$/) do |amount, account_type|
	puts "The account is #{account_type}"
	puts "The amount is #{amount}"
end

When(/^I transfer "(\$\d+)" from my Savings Account into my Checking Account$/) do |amount|
	puts "The amount is #{amount}"
end

Then(/^the balance of the "(\w+)" Account should be "(\$\d+)"$/) do |amount, account_type|
	puts "The account is #{account_type}"
	puts "The amount is #{amount}"
end

