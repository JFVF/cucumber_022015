Given(/^I have set a connection to API$/) do  
    @http_connection = Rest_service.get_connection
end 

When(/^I send a (GET) request to (.*?)$/) do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  @http_response = Rest_service.execute_request(@http_connection, http_request) 
  @last_json = @http_response.body
end

Then(/^I expect HTTP code (\d+)$/) do |response_code|
  expect(@http_response.code).to eql(response_code)
end

When(/^I send a (POST|PUT) request to (.*?) with json$/) do |method, end_point, json_text|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body 
end 

Then(/^response should contain that "(\w+)" of Project is (\d+)$/) do |project_attribute, attribute_value|
  expect(JsonHandler.contains_an_element?(@last_json, project_attribute, attribute_value.to_i)).to be true
end