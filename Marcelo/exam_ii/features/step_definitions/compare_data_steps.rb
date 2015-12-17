Given(/^the following list$/) do |list|
  @array_elements = ListHandler.convert_to_array(list)
end

Given(/^I have a list$/) do
  
end

When(/^I look for "(\w+)"$/) do |element|
  @exist = @array_elements.include? element
end

Then(/^I should see a message$/) do
	expect(@exist).to be true
end

Then(/^I should see "([^"]*)"$/) do |message|
   expect(@exist).to be false
end