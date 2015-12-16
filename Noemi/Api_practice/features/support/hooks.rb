Before do |scenario|
  puts " Let’s Go scenario: #{scenario.name}"
end

After do |scenario|
   if scenario.failed?
    puts  ":( Faile#{scenario.exception.message}" 
   else
   	 puts "Bye it Passed :)"
  end
end
