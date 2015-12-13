=begin
Given(/^I have deposited \$(100) in my Account$/) do |arg1| # in this case it is not needed to have arguments doesn't make sense
	puts arg1
end

Given(/^I have deposited \$(250) in my Account$/) do |arg1|
	puts arg1
end


Given(/^I have deposited \$(\d+) in my Account$/) do |arg1|
	puts arg1
end
=end

Given(/^I have deposited \$([0123456789]*) in my Account$/) do |arg1|
	puts arg1
end