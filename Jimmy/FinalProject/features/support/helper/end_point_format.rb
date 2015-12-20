module End_Point_Helper
	# this would be used by diferent type of ids project_id, story_id
	def End_Point_Helper.format_end_point_with_id(end_point)
		
		if(end_point.include? "{project_id}") then
		      end_point.sub!("{project_id}",$project_id.to_s)
		end
		#TODO for other endpoints

		return end_point

	end

	# this would be used to set the id values for differents objects projects, stories...
	def End_Point_Helper.set_object_id (end_point,body)
		
		if(end_point.include? "/projects") then
			$project_id= JSON.parse(body)["id"]


		end
		#TODO for other objects
	end
	
end