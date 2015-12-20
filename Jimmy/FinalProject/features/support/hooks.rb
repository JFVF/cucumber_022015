Before() do |scenario|
	puts "Starting the scenario: #{scenario.name}"
end

After() do |scenario|
	if $project_id!=nil then
		#delete the project
		http_request = Rest_service.get_request("DELETE", "/projects/#{$project_id}")
		res = Rest_service.execute_request(@http_connection, http_request)

		$project_id = nil
	end

	puts "Finishing the scenario: #{scenario.name}"

end