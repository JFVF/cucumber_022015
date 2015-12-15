
Before('@acceptance','@BVT') do |scenario|
  puts " Let’s Go scenario: #{scenario.name}"
end

After('@acceptance','~@BVT') do |scenario|
   if scenario.failed?
    puts  "Failed#{scenario.exception.message}" 
   else
   	 puts " Bye Bye it Passed"
  end
end
