Given /^I have authenticated with the correct PIN$/ do
steps %{
	And I have pushed my card into the slot
	And I enter my PIN
	And I press "OK"
}
end

Given(/^I have pushed my card into the slot$/) do
  
end

When(/^I enter my PIN$/) do
  
end

When(/^I press "([^"]*)"$/) do |arg1|
  
end

Then(/^I should see the main menu$/) do
  
end