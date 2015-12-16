Given(/^I have user list:$/) do |table|
  $usr_list = table.raw
  registor_example.get_list $usr_list  
end
Given(/^I have (\w+) client for search$/) do |user|
  @user_name = user.to_s
end
Given(/^I give (\d+) password for search$/) do |password|
  @user_pwd = password.to_s
end
Then(/^I should receive "([^"]*)" for the search$/) do |arg1|
  registor_example.ask @user_name
end
