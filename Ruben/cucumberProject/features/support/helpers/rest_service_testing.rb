require 'net/http'
require 'json'


module Rest_service

  HTTP_TIMEOUT_FOR_RESPONSE = 180
  
  #
  # This method set up a connection 
  #
  def Rest_service.get_connection
      http_connection = nil
      http_connection = Net::HTTP.new($app_host)      
      http_connection.read_timeout = HTTP_TIMEOUT_FOR_RESPONSE
      return http_connection
  end

  def Rest_service.get_request(method, url, object = nil)
    request = nil   
    url =  $app_root + url
    case method
      when "POST"
        request = Net::HTTP::Post.new(url)
      when "PUT"
        project_id = object["Id"].to_s
        url = url.gsub!('[id]',project_id)
       request = Net::HTTP::Put.new(url)
      when "DELETE"
        request = Net::HTTP::Delete.new(url)
      when "GET"
        request = Net::HTTP::Get.new(url)
    end
    request.basic_auth($app_user,$app_pass)  
   return request
  end

def Rest_service.execute_request(http_connection, http_request)
  http_response = http_connection.request(http_request)
  return http_response
end

def Rest_service.get_json_value(json, key)
  parsed = JSON.parse(json)
  string_value = parsed[key]
  return string_value
end

def Rest_service.edit_json_value(json, key, value)
  parsed = JSON.parse(json)
  parsed[key] = value
  return parsed.to_json
end

end