Given /^I have set a connection to todo.ly service$/ do 
  @http_connection = Rest_service.get_connection
end


When /^I send a (PUT|POST) request to (.*?) with json$/ do |method, end_point, json_text|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
   @last_json = @http_response.body
end
