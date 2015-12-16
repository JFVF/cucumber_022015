
Given(/^I have a list with the USERS with ID$/) do 
  
end

And(/^I have a list with the TotalPriced for the ID$/) do 
  
end

When(/^I search for an user by (\d+)$/) do |id|
  
end

Then(/^the (\d+), (\w+) and (\d+) is returned$/) do |id, user, total_priced|
	id = id.to_i
	total_priced = total_priced.to_i

	actual_user = @user.user_hash[id]
	actual_total_priced = @user.total_priced_hash[id]

	expect(actual_total_priced).to eq total_priced
end	

