require File.dirname(__FILE__)+'/../support/lib/data_helper'

When(/^I send a (PUT|POST) request to (?:update|create) a user with json$/) do |method, json_text|
  if method == 'POST'
    request_body = json_text
    @request_hash = JSON.parse(json_text)

    begin
      @user_expected = RestClient.post($user_endpoint,
                  request_body,    
                  {
                   :content_type => 'application/json',
                   :accept => 'application/json'})
      @hash_expected = JSON.parse(@user_expected)
    rescue => e
      puts e.response
    end
  elsif method == 'PUT'
    endpoint = $user_id_endpoint.gsub('[id]', $user_created_id.to_s)
    @request_hash = JSON.parse(json_text)

    request_body = @hash_actual.merge(@request_hash)
    begin
      @user_expected = RestClient.put(endpoint,
                                       JSON(request_body),
                                       {
                                          :Authorization => "Basic #{$auth}",
                                           :content_type => 'application/json',
                                           :accept => 'application/json'})
      @hash_expected = JSON.parse(@user_expected)
    rescue => e
      puts e.response
    end
  end
end

When(/^I send a GET request to (.*?)$/)do |end_point|
  $auth = Base64.encode64("#{@request_hash['Email']}:#{@request_hash['Password']}")
  @user_expected =  RestClient.get $user_endpoint,
                                {:Authorization => "Basic #{$auth}"}
  @hash_expected = JSON.parse(@user_expected)
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@user_expected.code).to eql(http_code.to_i)
end

Then(/^I expect to get that user$/) do
  $auth   = Base64.encode64("#{@request_hash['Email']}:#{@request_hash['Password']}")
  puts 'AUTH'
  puts $auth
  puts 'AUTH'
  user_actual =  RestClient.get $user_endpoint,
                                {:Authorization => "Basic #{$auth}"}
  # {:Authorization => "Basic dXNlMTIzckBlbWFpbC5jb206cEFTc3dvUmQ="}

  @hash_actual = JSON.parse(user_actual)
end

Then(/^I expect to get the updated user$/) do
  user_actual =  RestClient.get $user_endpoint,
                                {:Authorization => "Basic #{$auth}"}
  # {:Authorization => "Basic dXNlMTIzckBlbWFpbC5jb206cEFTc3dvUmQ="}

  @hash_actual = JSON.parse(user_actual)
end

Then(/^I expect the gotten user is equal to the created user$/) do
  # puts a = "#{@request_hash['Email']}:#{@request_hash['Password']}"
  # puts a = "#{@hash_expected['Email']}:#{@hash_expected['Password']}"
  # puts b = "#{@hash_expected['Password']}"


  # puts 'EXPECTED'
  # puts @hash_expected
  # puts @hash_expected.class
  # puts 'EXPECTED'
  # puts '----------'
  # puts 'ACTUAL'
  # puts hash_actual
  # puts hash_actual.class
  # puts 'ACTUAL'

  $user_created_id = @hash_actual['Id']

  # expect(@hash_expected.to_s).to be_json_eql hash_actual.to_s
  expect(JSON(@hash_expected)).to be_json_eql JSON(@hash_actual)

  # expect(hash_actual['Id']).to eq(@hash_expected['Id'])
  # expect(hash_actual['Email']).to eq(@hash_expected['Email'])

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


Given(/^The user with json exists$/) do |json_text|

  request_body = json_text
  # puts request_body
  # puts request_body.class
  @request_hash = JSON.parse(json_text)
  # @response = RestClient.post(@@endpoints,
  begin

    user_actual = RestClient.post($user_endpoint,
                                     request_body,
                                     {
                                         :content_type => 'application/json',
                                         :accept => 'application/json'})


    @hash_actual = JSON.parse(user_actual)
    $user_created_id = @hash_actual['Id']

  rescue => e
    puts e.response
  end

  $auth   = Base64.encode64("#{@request_hash['Email']}:#{@request_hash['Password']}")
  puts 'AUTH'
  puts $auth
  puts 'AUTH'
end

Then(/^I expect the retrieved user is equal to the user that already existed$/) do


  # expect(@hash_expected.to_s).to be_json_eql hash_actual.to_s
  expect(JSON(@hash_expected)).to be_json_eql JSON(@hash_actual)
end


When(/^I expect the gotten user is updated$/) do
  expect(JSON(@hash_expected)).to be_json_eql JSON(@hash_actual)
end



