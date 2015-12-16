Given /^I have a username and a password$/ do
  
end

When /^I enter a valid <username> and <password>$/ do |username, password|
 end


 When /^I enter a valid user(\d+) and pwd(\d+)$/ do |username, password|
    @result = 0
  if (username == "user1" || username == "user2" || username == "user3") && (password == "pwd1" || password == "pwd2" || password == "pwd3")
  	@result = 1

  end

end

Then /^I expect the message welcome(\d+)$/ do |message|
  if @result == 1
  	expect("welcome1").to eql(message.to_s)
  end
end
