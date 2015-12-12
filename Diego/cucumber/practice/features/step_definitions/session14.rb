# Given /I have deposited \$(\d+) in my (\w+) Account/ do |amount, account_type|
# # TODO: code goes here
# end

# When(/^I transfer \$(\d+) from my Savings Account into my Checking Account$/) do
#  |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^the balance of the (\w+) Account should be \$(\d+)$/) do |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then(/^the balance of the Savings Account should be \$(\d+)$/) do |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end



# When(/I (?:visit|go to) the homepage/) do
# # TODO: code goes here
# End


#######Tic tac toe
Given(/^a board like this:$/) do |table|
	@board = table.raw
  # table is a Cucumber::Core::Ast::DataTable
  # pending # Write code here that turns the phrase above into concrete actions
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
	row, col = row.to_i, col.to_i
    @board[row][col] = 'x'

	# puts @board
  # pending # Write code here that turns the phrase above into concrete actions
end

Then(/^the board should look like this:$/) do |expected_table|#|table|
	expected_table.diff!(@board)
  # table is a Cucumber::Core::Ast::DataTable
  # pending # Write code here that turns the phrase above into concrete actions
end