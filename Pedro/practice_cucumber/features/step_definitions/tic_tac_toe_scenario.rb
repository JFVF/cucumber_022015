Given(/^a board like this:$/) do |table|
  @board = table.raw
  p @board
end

When(/^player x plays in row (\d+), column (\d+)$/) do |arg1, arg2|
  @board[2][1] = 'x'
  puts @board
end

Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
end