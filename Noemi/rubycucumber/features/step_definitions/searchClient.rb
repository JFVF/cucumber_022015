Given(/^I have empty list$/) do 
	$h_u=Hash.new		
	$h_p=Hash.new
	$h_u.inspect
	$h_p.inspect
	
  #pending # Write code here that turns the phrase above into concrete actions
end
Given(/^I add client (\d+) with name (\w+) and \$(\d+)$/) do |id,name_c,price_c|
	#@clients.add_client(id.to_i, namec, price.to_i)	
	@id_c= id.to_i
	$h_u[@id_c] = name_c.to_s
	$h_p[@id_c] = price_c.to_s

end
Given(/^I have (\w+) client$/) do |name|	
	@name_to_ask=name.to_s
end

When(/^I ask for TotalPrices$/) do
	@price_cliente = 0.to_s
	if $h_u.has_value?(@name_to_ask)
 		@id_cliente = $h_u.key(@name_to_ask)
 		@price_cliente = $h_p[@id_cliente]
 	end
end
Then(/^I should receive \$(\d+)$/) do |price|
 
  expect(@price_cliente).to eq(price)

end


