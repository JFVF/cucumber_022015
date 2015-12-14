
Then(/^I get the list the projects$/) do

  @obj = JSON.parse($body_json)
  @j = @obj.count
  @i = 0
  puts "ID Project 		|	Content |"
  while @i < @j  do
   puts @obj[@i]["Id"].to_s + '  ' + @obj[@i]["Content"]
   @i +=1
  end
end

