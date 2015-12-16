Then /I have (\d+) cucumbers? in my basket/ do |number|
# TODO: code goes here
end

Given /I have deposited \$(\d+) in my (\w+) Account/ do |amount, account_type|
# TODO: code goes here
end

When /^I transfer \$(\d+) from my Savings Account into my Checking Account$/ do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
end

Then /^the balance of the (\w+) Account should be \$(\d+)$/ do |arg1, arg2|
  #pending # Write code here that turns the phrase above into concrete actions
end

Given /I have (\d+) dolars? in my (\w+)/ do |money, type|
# TODO: code goes here
end

When /I eat (\d+) (\w+) today/ do |fruit1, fruit2|
# TODO: code goes here
end

Then /I pay (\d+) dolars? for (?:apples?|peaches?) with (\w+)/ do |amount, type|
# TODO: code goes here
end