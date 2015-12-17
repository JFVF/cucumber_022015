Given(/^I entered username (\w+)$/) do |username|
  @username = username
end

Given(/^I entered password (\w+)$/) do |password|
  @password = password
end

Then(/^I should get message (.*?)$/) do |message|
	@expect_message = users_instance.getMessageAccordingUser(@username, @password)
	puts "#{@expect_message}"
  expect(@expect_message).to eq(message)
end