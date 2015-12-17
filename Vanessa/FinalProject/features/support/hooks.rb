Before do |scenario|
  puts "Executing scenario: #{scenario.name}"
end

After('@user_test') do |scenario|
	puts "Deleting user for scenario: #{scenario.name}"
	endpoint = $user_id_endpoint.gsub('[id]', $user_created_id.to_s)
	response  = RestClient.delete endpoint,
	{:Authorization => "Basic #{$auth}"}
end