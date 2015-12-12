Given(/^I have \$(\d+) in my account$/) do |balance|
  @balance = balance.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
  @withdraw = withdraw.to_i
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
  puts "This is your #{cash}"
end

Then(/^the balance of my account should be \$(\d+)$/) do |remaining|
	@remaining_expected = @balance - @withdraw
	expect(@remaining_expected).to eql(remaining.to_i) 
end