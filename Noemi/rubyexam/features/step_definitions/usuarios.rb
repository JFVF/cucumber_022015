Given(/^I have user list like this:$/) do |table|
  $u_list = table.raw
end

Given(/^I have (\w+) client$/) do |user|
  @user_name = user.to_s
end
Given(/^I give (\d+) password$/) do |password|
  @user_pwd = password.to_s
end

Then(/^I should receive "([^"]*)"$/) do |msn|
	@mensage= 'Not_found'

	$u_list.each  do |u|		
		if u[0]===@user_name			
			@mensage =u[2]
		end
	end
	puts @mensage
   @expect_msn = msn.to_s
   expect(@expect_msn).to eq(@mensage)
end
