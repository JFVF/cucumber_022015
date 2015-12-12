Given(/^I got the next meals to eat$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  @board = table.raw
end

When(/^I eat a sillpancho$/) do
  @board[1][0] = ''
end

Then(/^the meals remaining look like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table.diff!(@board)
end