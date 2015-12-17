Given(/^I have an (\w+) to compare$/) do |item|
  @item = item
end

When(/^it (?:exists|does not exist) in a list$/) do
  
end

Then(/^the expected result for (\w+) should be (true|false)$/) do |item, result|
  if $list_of_data.include?(item)
  	expect(result).to eql('true')
  else
  	expect(result).to eql('false')
  end	  
end
