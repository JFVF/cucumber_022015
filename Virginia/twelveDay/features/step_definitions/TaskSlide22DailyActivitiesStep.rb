Given(/^I wake up at (\d+):(\d+) am$/) do |hours, minutes|
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I walk (\d+) blocks$/) do |quantity|
  #pending # Write code here that turns the phrase above into concrete actions
end

And(/^I take a buss to (\w+)$/) do |place|
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should arrive to my work$/) do
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I wait until (\d+) am$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should attend to scrum meeting$/) do
 # pending # Write code here that turns the phrase above into concrete actions
end

Given(/^A matrix of test cases to automate like this:$/) do |table|
  @matix= table.raw
  puts "Given matrix before executing #{@matix}"
end

When(/^(\w+) completes test case: (\w+)$/) do |tester, test|
    puts "Given #{tester}, #{test}"
    @matix.each do |rowdata|
        puts "Row #{rowdata}"
        if rowdata[0].to_s == test.to_s
            rowdata[1] = "done"
            rowdata[2] = tester
        end    
    end
    puts "When matrix is changed #{@matix}"
end

Then(/^A dessert menu should look like this:$/) do |expected_table|
expected_table.diff!(@matix)#expected table sea diferente al table
end