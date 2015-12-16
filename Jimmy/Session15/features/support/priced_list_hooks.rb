Before('@priced_list_outline,@priced_list') do |scenario|
	@user = User.instance		
	puts "CUSTOMER SEARCH TEST"

	if(scenario.name.include?"Outline") then
		puts "SEARCHIN….."
		puts "I am running an outline scenario"
	else
		puts "I am running a normal scenario"
	end
end

After('@priced_list_outline,@priced_list') do |scenario|
	if(scenario.name.include?("Outline")) then
		puts "I finished running the outline scenario"
	else
		puts "I finished running a normal scenario"
	end
end