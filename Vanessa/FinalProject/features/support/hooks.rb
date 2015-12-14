# Before do |scenario|
#   puts " Let’s Go scenario: #{scenario.name}"
# end

After('@user_test') do |scenario|
	endpoint = $user_id_endpoint.gsub('[id]', $user_created_id.to_s)
	puts 'DELETE ENDPOINT'
	puts endpoint
	puts 'DELETE ENDPOINT'
	response  = RestClient.delete endpoint,
	{:Authorization => "Basic #{$auth}"}
	puts 'User deleted'
	puts response.body
  #  if scenario.failed?
  #   puts  "Failed #{scenario.exception.message}" 
  #  else
  #  	 puts " Bye Bye it Passed"
  # end
end