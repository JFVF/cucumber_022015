
# Given(/^I have set a connection to application$/) do
# 	# @http_connection = Rest_service.get_connection
# end

# When(/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json_text|
# 	# # http_request = Rest_service.get_request(method, end_point)
#  # #  	http_request.body = json_text
#  # #  	@http_response = Rest_service.execute_request(@http_connection, http_request)
#  # #  	@last_json = @http_response.body
#  # # puts 'ENDOINT'
#  # # puts end_point
#  # # puts 'ENDOINT'
#  # $LOAD_PATH << File.dirname(__FILE__)
#  # puts File.dirname(__FILE__)
#  req =  YAML::load_file(File.dirname(__FILE__) + '/../support/requests/userRequest.yml')

#  point = USER_ENDPOINT
#  # puts 'JSON TEXT'
#  # puts req
#  # puts json_text
#  # puts json_text.class
#  # puts 'JSON TEXT'
#  # puts '-------------------'
#       # request_body = JSON(req['createUser']['UserObject'])
#       # request_body = JSON(req['createUser'])
#       request_body = json_text
#       puts request_body
#       puts request_body.class
#   # @response = RestClient.post(@@endpoints,
#     begin
#   @response = RestClient.post(point,
#                   request_body,    
#                   {
#                     # :Authorization => 'Basic YWRtaW46Q29udHJvbDEyMw==',
#                    :content_type => 'application/json',
#                    :accept => 'application/json'})
#   # hash = JSON.parse(@response)
#     # hash = response.body
#     # puts ans.class
#     # puts hash.class
#     # puts hash["id"]
#     # @@idAgent = hash["id"]
#     puts @response.body
#     puts @response.code
#     puts "*****"
#   rescue => e
#     puts 'ENTER RESCUE'
#     puts e.response
#     puts 'ENTER RESCUE'
#   end




#  # @response =  RestClient.get point
#     # {:Authorization => 'Basic YWRtaW46Q29udHJvbDEyMw=='}

#     # response =  RestClient.get 'http://192.168.213.135:9080/rest/agent'

# # puts 'skdfhl'
# #     puts @response.body

#     # puts hash["id"]
# end

# When /^I send a (GET) request to "(.*?)"$/ do |method, end_point|
#   	# http_request = Rest_service.get_request(method, end_point)
#   	# @http_response = Rest_service.execute_request(@http_connection, http_request)
#    # 	@last_json = @http_response.body
# end

# Then(/^I expect HTTP code (\d+)$/) do |http_code|
#   # puts 'code'
#   # puts @response.code
#   # puts 'code'
# 	expect(@response.code).to eql(http_code.to_i)

  
# end

# Then(/^I expect JSON equal to$/) do |json_text|
#     puts 'EXPECTED'
#   puts json_text
#   puts json_text.class
#   puts 'EXPECTED'
#   puts '----------'
#   puts 'ACTUAL'
#   puts @response.body
#   puts @response.body.class
#   puts 'ACTUAL'

#   # expect(@last_json).to be_json_eql json_text
# 	expect(@response.body).to be_json_eql json_text
# end