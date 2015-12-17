Given(/^I have a username and a password$/) do
  
end

 When(/^I enter a valid (.+?) and (.+?)$/) do |username,password|
    case username
      when "user"
        @msg = "message"
      when "admin"
        @msg = "welcome"
      when "guest"
        @msg = "have a nice day"
    end
  end

 Then(/^I expect the message: (.+?)$/) do |message|
   	expect(@msg).to eq(message.to_s)
 end
