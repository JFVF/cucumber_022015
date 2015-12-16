Given (/^I have set a connection to (\w+) for testing the project feature/) do |application_service|
	puts 'The application service value'
	puts application_service
	@http_connection = Rest_service.get_connection
end


When (/^I send a (GET) request for project to (.*?) using the project feature$/) do |method, end_point|
	p end_point

	http_request = Rest_service.get_request(method, end_point)
	@http_response = Rest_service.execute_request(@http_connection, http_request)
	@last_json = @http_response.body
end


Then (/^I expect HTTP code (\d+) on project feature$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end 


When (/^I send a (PUT|POST) request for project to (.*?) using the project feature$/) do |method, end_point, json_text|
	http_request = Rest_service.get_request(method, end_point)
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
  @project_id = @last_json[6..12]
end

When (/^I send a (DELETE) request for project to (.*?) using the project feature$/) do |method, end_point|
	p end_point
  #end_point['[id]'] = @project_id
	http_request = Rest_service.get_request(method, end_point)
	@http_response = Rest_service.execute_request(@http_connection, http_request)
	@last_json = @http_response.body
end
