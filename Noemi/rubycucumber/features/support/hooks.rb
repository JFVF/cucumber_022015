After ('@outline') do 
  puts "I finished running the outline scenario" 
end
After ('@normal') do 
  puts "I finished running a normal scenario"  
end

Before ('@normal,@outline') do 
  puts  "CUSTOMER SEARCH TEST"
end
Before ('@outline') do 
  puts  "SEARCHIN.." 
end

