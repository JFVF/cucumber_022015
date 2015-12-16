
Given /^I have set a connection to todo.ly service$/ do 
  @http_connection = Rest_service.get_connection
end


When /^I send a (PUT|POST) request to (.*?) with json$/ do |method, end_point, json_text|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
end


Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end
Then(/^I expect a json that contains the following$/) do |json_text|
	#expect(@last_json).to be_json_eql json_text => used to compare complete jsons
	#
	json_aux=JSON.parse(json_text)
	json_actual = JSON.parse(@last_json)

  expect(json_actual["Content"]).to include	(json_aux["Content"]) #comparing specific properties of a json
end