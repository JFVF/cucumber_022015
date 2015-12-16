Given(/^I have a valid user (.*?)$/) do |userName|
	
	@userN = userName.to_s
end

Given(/^I have a valid pass (\d+)$/) do |userPass|
    @userP = userPass.to_s
end

Then(/^The message should be Wellcome$/) do
	message = "invalid"
  if(@userN.eql? "user1")
  	if(@userP.eql? "123")
  		message = "Wellcome"
  	else
  		message = "invalid"
  	end
  end
  expect(message).to eq("Wellcome")
end