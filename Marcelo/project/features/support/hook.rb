Before do |scenario|
	puts "Starting the execution of: '#{scenario.name}'"
end

After do |scenario|
   if scenario.failed?
     puts  "Failed #{scenario.exception.message}" 
   else
   	 puts " #{ scenario.name }  Passed"
   end
end