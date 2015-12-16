
When(/^I search the client "([^"]*)"$/) do |keyword|
  @keyword = keyword
end

Then(/^The client should exist in the client list$/) do
  expect(users_instance.getUserHashMap.has_key?(@keyword)).to be true
end

Then(/^The client should not exist in the client list$/) do
  expect(users_instance.getUserHashMap.has_key?(@keyword)).to be false
end  