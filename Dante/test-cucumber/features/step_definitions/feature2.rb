Given /^I have a list of items$/ do
  
end

When(/^I look for a item data(\d+)$/) do |value|
	@val = Datalist.Exist(value)

end

Then(/^I expect to receive the message ok$/) do |message|
  	if (@val = true)
  		expect("ok").to eql(value)
  	end
end

When(/^I look for a item not_exist$/) do
  
end

Then(/^I expect to receive the message NO$/) do
  
end