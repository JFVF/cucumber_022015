Given(/^a board like this:$/) do |table|
  @board = table.raw
  puts "Given table before executing #{@board}"
end

When(/^player x plays in row (\d+), column (\d+)$/) do |row, col|
  row, col = row.to_i, col.to_i
    @board[row][col] = 'x' ##modificar un argumento 

  puts "After changing the cell with x #{@board}"
end

Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)#expected table sea diferente al table
end
