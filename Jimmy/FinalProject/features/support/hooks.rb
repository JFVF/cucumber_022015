After() do
	if @project_id!=nil then
		puts @project_id
		http_request = Rest_service.get_request("DELETE", "/projects/#{@project_id}")
		res = Rest_service.execute_request(@http_connection, http_request)
		puts res.body		
	end
end