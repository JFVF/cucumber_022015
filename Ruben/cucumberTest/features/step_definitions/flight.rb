Given(/^the flight ([A-Z]+\d+) is leaving today$/) do |arg1|
  #pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have deposited (\d+) in my ([A-Z]+) Account$/) do |arg1,arg2|
  #pending # Write code here that turns the phrase above into concrete actions
end

#game steps
Given(/^a board like this:$/) do |table|
	@board = table.raw
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
  row, col = row.to_i, col.to_i
  @board[row][col] = 'x'
  #puts("#{@board}")
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |table|
  table.diff!(@board)
  # table is a Cucumber::Core::Ast::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
end