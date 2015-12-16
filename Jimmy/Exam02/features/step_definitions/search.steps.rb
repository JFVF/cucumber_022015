Given(/^I have a list of fruits$/) do
  
end

When(/^I search for (\w+)$/) do |fruit|
  @search_fruit = fruit
end

Then(/^([a-zA-Z ]+) message is displayed$/) do |message|
	
	if ($fruits_hash.has_value?(@search_fruit) == true) 
		expect(message).to eq("Fruit Found")
	else
		expect(message).to eq("Fruit Not Found")
	end
end