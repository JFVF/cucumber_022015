Given (/^I have set a connection to (\w+) for testing the project feature/) do |application_service|
	@http_connection = Rest_service.get_connection
end


When (/^I send a (GET) request for project to (.*?) using the project feature$/) do |method, end_point|
	http_request = Rest_service.get_request(method, end_point)
	@http_response = Rest_service.execute_request(@http_connection, http_request)
	@last_json = @http_response.body
end

Then (/^I expect HTTP code (\d+) on project feature$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end 