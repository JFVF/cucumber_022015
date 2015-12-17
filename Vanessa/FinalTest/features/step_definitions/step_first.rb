Given(/^I type the username (\w+)$/) do |username|
	puts "The username is: #{username} " 
  # pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I type the password ([0-9a-zA-Z]+)$/) do |password|
	puts "The password is: #{password}" 
  # pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click the button Login$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I expect to receive the message ([\w\s]+)$/) do |message|
	puts "The message is: #{message}"
  # pending # Write code here that turns the phrase above into concrete actions
end