Given(/^I have \$(\d+) in my account$/) do |balance|
    #Juts keep the value inserted
    @balance = balance
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
   #Juts keep the value inserted
    @money= withdraw
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
   #Just print the cash received
  puts "This is your $#{cash}"
end

Then(/^the balance of my account should be \$(\d+)$/) do |remaining|
	rest = @balance.to_i - @money.to_i
	expect(rest).to eq(remaining.to_i)

	#@remaining_calculated = @balance - @money
    #expect(@remaining_calculated).to eql(remaining) 


end

