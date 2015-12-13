
Given(/^a fruit list to by like this:$/) do |table|
  @flist = table.raw
end

When(/^I buy only (\d+) of all (\w+)$/) do |fq, fruit|
  	@flist .each do |i_fruit|
  		if i_fruit[1] == fruit
  			i_fruit[2] = fq
  		end
	end
end

When(/^I buy all (\w+)$/) do |fruit|
  puts @flist
end

When(/^I buy also (\d+) (\w+)$/) do |fq, fruit|
  #pending # Write code here that turns the phrase above into concrete actions

  @flist.push([@flist.size.to_s ,fruit,fq])

end

When(/^I do not find (\w+)$/) do |fruit|   

	#@flist.reject! { |x| x[1] == fruit } # => [1,3]
	puts @flist
	@flist.each_index do |index|    	
    	if @flist[index][1] ==fruit
    		@flist.delete_at(index)
    	end
	end
end

Then(/^the fruit list should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  expected_table.diff!(@flist)
end
