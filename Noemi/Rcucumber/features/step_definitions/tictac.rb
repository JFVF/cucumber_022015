Given(/^a board like this:$/) do |table|
  @board = table.raw
end

When /^player (\w+) plays in row (\d+), column (\d+)$/ do |play,row, col|
	puts @board
	row, col = row.to_i, col.to_i
    @board[row][col] = play
end


Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  expected_table.diff!(@board)
end
