Given(/^I have set a connection to application$/) do
  @http_connection = Rest_service.get_connection
end

When (/^I send a (GET) request to (.*?)$/)do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  @http_response = Rest_service.execute_request(@http_connection, http_request)
   @last_json = @http_response.body
end

When(/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json_text|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  puts "Last jason0 #{@http_response.body}"
  @last_json = @http_response.body
  @parse_json = JSON.parse(@last_json)
  puts "Last jason #{@last_json}"
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
  expect(@http_response.code).to eql(http_code)
end

Then(/^The JSON should be contain$/) do |json_text|
    @expect_result = JSON.parse(json_text)
   expect(@parse_json).to include(@expect_result)
end

When(/^I send a Delete request to "([^"]*)" with format "([^"]*)"$/) do |end_point, extension|
  @idProject = @parse_json['Id']
  puts "endonpoint #{end_point} ,#{extension}, #{@idProject}"
  @end_point_url = "#{end_point}/#{@idProject}.#{extension}"
  puts "USSS #{@end_point_url}"
  http_request = Rest_service.get_request("DELETE", @end_point_url)
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @deleteBody_json = @http_response.body
  puts " delete#{@deleteBody_json}"
end

Then(/^The project should be deleted$/) do
  @parse_delete_json = JSON.parse(@deleteBody_json)
  expect(@parse_delete_json['Deleted']).to eq(true)
end