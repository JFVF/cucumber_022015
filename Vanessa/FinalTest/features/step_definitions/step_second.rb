Given(/^I have a list with elements$/) do
	puts 'The list is:'
	puts $list
end

When(/^I search for the element (\w+)$/) do |color|
	@color_to_find = color
	puts "The element to search: #{color}"
end

Then(/^I expect to find that element$/) do
	colors = $list.values.first
	valid =  colors.include?(@color_to_find)
	expect(valid).to be true
end

Then(/^I expect to not find that element$/) do
	colors = $list.values.first
	valid =  colors.include?(@color_to_find)
	expect(valid).to be false
end
