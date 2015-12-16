Given(/^I waked up$/) do
  
end

And(/^I took a shower$/) do
 
end

And(/^I brushed my teeth$/) do
  
end

Given(/^I am ready to go to work$/) do
  
end

And(/^my children are ready to go to the kindergaten$/) do
  
end

And(/^I am not in the kidergarten$/) do
 
end

And(/^my children are not in the kindergarten$/) do
  
end

When(/^I start walking to the kindergarten$/) do
  
end

When(/^my kids start walking to the kindergarten$/) do
  
end

And(/^I reach the kindergarten$/) do
  
end

And(/^my children reach the kindergarten$/) do
  
end

Then(/^the teacher is at the door waiting for students$/) do
  
end

Then(/^the teacher ask my children to pass to the kindergarten$/) do
  
end


Given(/^I have the lunch bag of my kid empty$/) do
  
end

When(/^I prepare small sandwich$/) do
  
end

And(/^I prepare juice in his small bottle$/) do
  
end

And(/^they are not inside of his lunch bag$/) do
  
end

When(/^I put the small sandwich inside of his lunch bag$/) do
 
end

And(/^I put the bottle of juice inside of their lunch bag$/) do
  
end

And(/^I close his lunch bag$/) do
  
end

When(/^I prepare the following:$/) do |exp_lunch|
  @expected_lunch = exp_lunch.raw
end

Then(/^the lunch bag should have this:$/) do |lunch|
  
  lunch.diff!(@expected_lunch)

end

