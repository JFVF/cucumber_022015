
Then(/^I get the list the projects$/) do

  @obj = JSON.parse($body_json)
  @list = Hash.new
  @i = 0	
  puts "ID Project 		|	Content |"
  @obj.each do |i_h|  	  	
  	@key_p = @obj[@i]["Id"].to_s
  	@name_p = @obj[@i]["Content"].to_s
  	puts @key_p + "   | " + @name_p
    @list[@key_p] = @name_p 
    @i +=1    
  end
  p @list
end

Then(/^I delete all projects$/) do

  @http_connection = Rest_service.get_connection
  @list.each do |key, value|  	
  	puts "Deleting " + key.to_s + ' project ' + value.to_s
    @end_point ='/projects/' + key + '.json'
    http_request = Rest_service.get_request("DELETE", @end_point)
  	@http_response = Rest_service.execute_request(@http_connection, http_request)
  	$body_json = @http_response.body
  end
end

Then (/^I expect JSON equal to "(.*?)" after to delete$/) do |json_text|
	@obj = JSON.parse(json_text) 
  	@body_jsonp= JSON.parse($body_json)
  	@body_jsonp.empty?
end


When(/^I expect JSON contain$/) do |json_text|
	@body_jsonp= JSON.parse($body_json)
	@obj = JSON.parse(json_text) 	
  	expect(@body_jsonp).to include(@obj)

end

Then /^I expect JSON equal to$/ do |json_text|
	@body_jsonp= JSON.parse($body_json)
	@obj = JSON.parse(json_text)
	puts @obj 
	if  @obj.any?		
		expect(@body_jsonp).to be_json_eql @obj
  	else		
  		@body_jsonp.empty?
  	end
end
