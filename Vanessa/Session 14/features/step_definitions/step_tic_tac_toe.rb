Given(/^a board like this:$/) do |table|
	@board = table.raw
end

When(/^player (\w+) plays in row (\d+), column (\d+)$/) do |player, row, col|
	puts @board
	
	row, col = row.to_i, col.to_i
	@board[row][col] = player.to_s
end

Then(/^the board should look like this:$/) do |expected_table|
	expected_table.diff!(@board)
end