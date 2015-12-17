

Given(/^I entered my username (\w+)$/) do |username|	
  @username = username
end

Given(/^I entered my password (\w+)$/) do |password|
  @password = password
end

When(/^I click login button$/) do
	
 if (@username=="Gordines")
		@message = "Welcome"
	else
		if (@username=="agapito")
			@message = "Have a nice day"
		else
			if (@username=="jism")
				@message = "Hello"
			end
		end
	end
end

Then(/^the following message is diplayed ([a-zA-Z !]+)$/) do |message|

	expect(@message).to eq(message)
  
end