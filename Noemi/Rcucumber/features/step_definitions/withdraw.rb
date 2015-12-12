
Given(/^I have \$(\d+) in my account$/) do |balance|
    #Juts keep the value inserted
    @balance = balance
    puts @balance
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
   #Juts keep the value inserted
    @money= withdraw
    puts $app_root
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
   #Just print the cash received
   puts "This is your cash $#{cash}"  
   @current_balance =  @balance.to_i - cash.to_i
   puts "This is your current balance $#{@current_balance }"
end

Then(/^the balance of my account should be \$(\d+)$/) do |remaining|
	exp_remaining = remaining.to_i
	expect(@current_balance).to eq(exp_remaining)
end
