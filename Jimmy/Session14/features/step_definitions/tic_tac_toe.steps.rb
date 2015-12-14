Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  @board = table.raw

end

When(/^player (x|y) plays in row (\d+), column (\d+)$/) do |player,arg1, arg2|
	rol,col = arg1.to_i,arg2.to_i
		@board[rol][col] = player
    	
    puts @board
end

Then(/^the board should look like this:$/) do |expected_table|
  # table is a Cucumber::Core::Ast::DataTable
  expected_table.diff!(@board)

end