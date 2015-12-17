Given(/^I have a (\w+)$/) do |username|
	@username = username
end

Given(/^a (\w+)$/) do |password|
  @password = password
end

When(/^I log in to the application$/) do 

end

Then(/^I should be greated with this (\w+)$/) do |greeting|
	  case greeting
	  when 'Hi_sr'
	    expect(@username).to eql('rodrigo')
    when 'Good_day'
	    expect(@username).to eql('luis')
    when 'Have_a_nice_day'
	    expect(@username).to eql('octavio')		
	  else
	  	raise NotImplemented.new(greeting)
	  end
end

