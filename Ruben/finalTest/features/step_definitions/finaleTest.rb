Given(/^I have a valid user (.*?)$/) do |userName|
	
	@userN = userName.to_s
end

Given(/^I have a valid pass (\d+)$/) do |userPass|
    @userP = userPass.to_s
end

When(/^I login to application$/) do
  @message = "invalid"
  if(@userN.eql? "user1")
    if(@userP.eql? "123")
      @message = "Wellcome"
    else
      @message = "invalid"
    end
  end
end

Then(/^The message should be Wellcome$/) do	
  expect(@message).to eq("Wellcome")
end

Then(/^The message should be invalid$/) do
  expect(@message).to eq("invalid")
end