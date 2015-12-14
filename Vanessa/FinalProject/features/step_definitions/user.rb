require File.dirname(__FILE__)+'/../support/lib/data_helper'

Given(/^I want to create a new user$/) do
  # @point = $user_endpoint
	# @http_connection = Rest_service.get_connection
end

When(/^I send a (PUT|POST) request to (?:update|create) a user with json$/) do |method, json_text|
  # req =  YAML::load_file(File.dirname(__FILE__) + '/../support/requests/userRequest.yml')
  # request_body = JSON(req['createUser'])
  request_body = json_text
  # puts request_body
  # puts request_body.class
  @request_hash = JSON.parse(json_text)
  puts 'JSON TEXT'
  puts json_text
  puts $user_endpoint
  puts 'JSON TEXT'
  # @response = RestClient.post(@@endpoints,
  begin

$auth   = Base64.encode64("vane.27.04@hotmail.com:5LPFT6")
user_actual =  RestClient.get $user_endpoint, 
  {:Authorization => "Basic #{$auth}"}
  puts user_actual
  puts '-----------------------------------'

  # @user_expected = RestClient.post(
  #   $user_endpoint,
  #   request_body,
  #   {
  #   :content_type => 'application/json',
  #   :accept => 'application/json'
  #   })
  # puts 'RESPONSE'
  # puts @user_expected
  # puts 'RESPONSE'

  # @hash_expected = JSON.parse(@user_expected)

  # puts 'HAAAASH'
  # puts @hash_expected
  # puts 'HAAAASH'
  rescue => e
    puts 'ENTER RESCUE'
    puts e.response
    puts 'ENTER RESCUE'
  end
  # DataHelper.get_hash_with_keys(@hash_expected, @request_hash)
end

When(/^I send a (GET) request to "(.*?)"$/)do |method, end_point|
  	# http_request = Rest_service.get_request(method, end_point)
  	# @http_response = Rest_service.execute_request(@http_connection, http_request)
   # 	@last_json = @http_response.body
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
  # puts 'code'
  # puts @response.code
  # puts 'code'
  # expect(@response.code).to eql(http_code.to_i)
	expect(@user_expected.code).to eql(http_code.to_i)

  
end

Then(/^I expect the user to be created$/) do
  # puts a = "#{@request_hash['Email']}:#{@request_hash['Password']}"
  # puts a = "#{@hash_expected['Email']}:#{@hash_expected['Password']}"
  # puts b = "#{@hash_expected['Password']}"
  $auth   = Base64.encode64("#{@request_hash['Email']}:#{@request_hash['Password']}")
  puts 'AUTH'
  puts $auth
  puts 'AUTH'
  user_actual =  RestClient.get @point, 
  {:Authorization => "Basic #{$auth}"}
  # {:Authorization => "Basic dXNlMTIzckBlbWFpbC5jb206cEFTc3dvUmQ="}

  hash_actual = JSON.parse(user_actual)

  puts 'EXPECTED'
  puts @hash_expected
  puts @hash_expected.class
  puts 'EXPECTED'
  puts '----------'
  puts 'ACTUAL'
  puts hash_actual
  puts hash_actual.class
  puts 'ACTUAL'

  $user_created_id = hash_actual['Id']

  expect(hash_actual['Id']).to eq(@hash_expected['Id'])
  expect(hash_actual['Email']).to eq(@hash_expected['Email'])

  # puts 'EXPECTED'
  # puts json_text
  # puts json_text.class
  # puts 'EXPECTED'
  # puts '----------'
  # puts 'ACTUAL'
  # puts @response.body
  # puts @response.body.class
  # puts 'ACTUAL'

  # expect(@last_json).to be_json_eql json_text
	# expect(@response.body).to be_json_eql json_text
end