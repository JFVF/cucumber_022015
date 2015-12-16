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
    $user_created_id = @hash_expected['Id']
    $auth = Base64.encode64("#{@request_hash['Email']}:#{@request_hash['Password']}")
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
  @user_expected =  RestClient.get(
    $user_endpoint,
    {:Authorization => "Basic #{$auth}"})
  
  @hash_expected = JSON.parse(@user_expected)
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@user_expected.code).to eql(http_code.to_i)
end

Then(/^I expect to get that user$/) do
  $auth   = Base64.encode64("#{@request_hash['Email']}:#{@request_hash['Password']}")
  user_actual =  RestClient.get $user_endpoint,
                                {:Authorization => "Basic #{$auth}"}

  @hash_actual = JSON.parse(user_actual)
end

Then(/^I expect to get the updated user$/) do
  user_actual =  RestClient.get $user_endpoint,
                                {:Authorization => "Basic #{$auth}"}

  @hash_actual = JSON.parse(user_actual)
end

Then(/^I expect the gotten user is equal to the created user$/) do
  $user_created_id = @hash_actual['Id']

  expect(JSON(@hash_expected)).to be_json_eql JSON(@hash_actual)
end


Given(/^The user with json exists$/) do |json_text|
  request_body = json_text
  @request_hash = JSON.parse(json_text)
  begin
    user_actual = RestClient.post(
      $user_endpoint,
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
end

Then(/^I expect the retrieved user is equal to the user that already existed$/) do
  expect(JSON(@hash_expected)).to be_json_eql JSON(@hash_actual)
end


When(/^I expect the gotten user is updated$/) do
  expect(JSON(@hash_expected)).to be_json_eql JSON(@hash_actual)
end

Then(/^I expect the user to be created$/) do 
  hash = DataHelper.get_hash_with_keys(@hash_expected, @request_hash)
  expect(JSON(@request_hash)).to be_json_eql JSON(hash)
end




