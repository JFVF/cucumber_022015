#Add the library for HTTP
require 'net/https'
require 'uri'

module Rest_service

  #@uri = URI.parse("https://pivotal.tracker.com/")
  HTTP_TIMEOUT_FOR_RESPONSE = 180
  

  #
  # This method set up a connection 
  #
  def Rest_service.get_connection
    http_connection = nil
    http_connection = Net::HTTP.new($app_host,$app_port)
    http_connection.use_ssl=true
    http_connection.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http_connection.read_timeout = HTTP_TIMEOUT_FOR_RESPONSE
    return http_connection
  end

  def Rest_service.get_request(method, endpoint)
    request = nil
    
    url =  $app_root + $app_version + endpoint

    case method
      when "POST"
        request = Net::HTTP::Post.new(url)
      when "PUT"
        request = Net::HTTP::Put.new(url)
      when "DELETE"
        request = Net::HTTP::Delete.new(url)
      when "GET"
        request = Net::HTTP::Get.new(url)
    end
    #request.basic_auth($app_user,$app_pass) 
    request['X-TrackerToken'] = $app_token
    request['Content-Type'] = "application/json"
    return request
  end
  
  def Rest_service.execute_request(http_connection, http_request)
    http_response = http_connection.request(http_request)
    return http_response
  end

end
