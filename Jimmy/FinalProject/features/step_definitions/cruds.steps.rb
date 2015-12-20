
Given /^I have set a connection to (?:.*) service$/ do 
  @http_connection = Rest_service.get_connection
end


When /^I send a (GET|DELETE) request to (.*)$/ do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
  puts @last_json
end

When /^I send a (POST|PUT) request to (.*)$/ do |method, end_point,body|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = body
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body

  @project_id= JSON.parse(@last_json)["id"]
  #puts @project_id

  #puts "****** #{method} ***** #{end_point}"
  #puts "response body #{@last_json}"
  #puts "rsonse cde #{@http_response.code}"
  #puts "request body #{http_request.body}"
  #puts "heades: #{http_request.to_hash.inspect}"
end


Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end

Then(/^I expect a json that contains the following$/) do |json_text|
	#expect(@last_json).to be_json_eql json_text => used to compare complete jsons
	#
	json_aux=JSON.parse(json_text)
	json_actual = JSON.parse(@last_json)

  expect(json_actual["name"]).to include	(json_aux["name"]) #comparing specific properties of a json
end