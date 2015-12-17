Before do |scenario|
  puts " Start scenario: #{scenario.name}"
end

After do |scenario|
   if scenario.failed?
    puts  ":( Faile#{scenario.exception.message}" 
   else
   	 puts "It Passed :)"
  end
end
