Before do |scenario|
  puts " Lets Go scenario: #{scenario.title}"
end

After do |scenario|
   if scenario.failed?
    puts  "Failed#{scenario.exception.message}" 
   else
   	 puts "The scenario passed"
  end
end
