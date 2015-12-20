
Given /^I have set a connection to (?:.*) service$/ do 
  @http_connection = Rest_service.get_connection
end


When /^I send a (GET|DELETE) request to (.*)$/ do |method, end_point|

  end_point=End_Point_Helper.format_end_point_with_id(end_point)

  http_request = Rest_service.get_request(method, end_point)
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
  
end

When /^I send a (POST|PUT) request to (.*)$/ do |method, end_point,body|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = body
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body

  #setting the global resource id
  End_Point_Helper.set_object_id(end_point,@last_json)
    
end


Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end

Then(/^I expect a json that contains the following$/) do |json_text|
	#expect(@last_json).to be_json_eql json_text => used to compare complete jsons
	json_expected=JSON.parse(json_text)
	json_actual = JSON.parse(@last_json)

  #comparing specific properties of a json as hashes
  json_expected.each{ |key,value|

    expect(json_expected[key]).to include  (json_actual[key]) 

  }

  
end