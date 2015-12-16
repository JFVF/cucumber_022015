Given(/^I have empty list$/) do
	#$list= Registor.new 

	
end

Given(/^I add client (\d+) with name (\w+) and \$(\d+)$/) do |id,name_c,price_c|	
	@id_c= id.to_i
	registor_example.add_client(@id_c, name_c, price_c)
end

Given(/^I have (\w+) client$/) do |name|	
	@name_to_ask=name.to_s
end

When(/^I ask for TotalPrices$/) do
	#registor_example.print_lists
	@price_cliente = registor_example.ask @name_to_ask
end
Then(/^I should receive \$(\d+)$/) do |price|
 
  expect(@price_cliente).to eq(price)

end


