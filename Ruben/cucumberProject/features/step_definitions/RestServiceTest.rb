Given(/^I have set a connection to application$/) do
	@http_connection = Rest_service.get_connection
end

When(/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json_text|
	http_request = Rest_service.get_request(method, end_point,@result_json)
  @projectName = json_text
  if end_point.to_s.eql? "/Items.json"
    hash = JSON.parse(@result_json.to_json)
    new_json = Rest_service.edit_json_value(json_text,"ProjectId",hash["Id"])
    json_text = new_json
  end

  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
end

When (/^I send a (GET) request to (.*?)$/) do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json_result = @http_response.body
  index_element = JSON.parse(@last_json_result).length.to_i
  @result_json = JSON.parse(@last_json_result)[index_element-1]
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end
  
Then(/^I expect JSON equal to$/) do |json_text| 
  parsed_json = JSON.parse(@last_json)  
  parsed_json.each_pair do |key,value|
    if key.eql? "ItemOrder"
      parsed_json.delete(key)
    elsif key.eql? "LastSyncedDateTime"
      parsed_json.delete(key)      
    elsif key.eql? "LastUpdatedDate"
      parsed_json.delete(key)
    elsif key.eql? "Id"
      parsed_json.delete(key)
    end    
  end
  expected_json = JSON.parse(json_text)
  expect(parsed_json.to_json).to be_json_eql expected_json.to_json
end

Then(/^I expect the created project name into response JSON$/) do
  actual = Rest_service.get_json_value(@projectName,"Content")
  expected = Rest_service.get_json_value(@last_json,"Content")
  expect(actual).to eql(expected)
end

Then(/^I expect JSON response equal to$/) do |json_text|
  parsed_json = JSON.parse(@last_json_result)
  expected_json = JSON.parse(json_text)
  expect(parsed_json.to_json).to be_json_eql expected_json.to_json
end