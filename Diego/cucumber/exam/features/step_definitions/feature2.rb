Given(/^I have a list of items$/) do
  
end

When(/^I look for an item: (.+?)$/) do |item|
	Datalist.listOfItems()	
	@found = Datalist.find(item)
end

Then(/^I expect to find it$/) do 
  		expect(@found).to be true
end


Then(/^I expect to not find it$/) do
	 	expect(@found).to be false
end

