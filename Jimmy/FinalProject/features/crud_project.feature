
Feature:Project
@1.1
Scenario: Get Projects
Given I have set a connection to pivotal tracker service
When I send a GET request to /projects
Then I expect HTTP code 200
	

@1.2
Scenario: Create a Project
Given I have set a connection to pivotal tracker service
When I send a POST request to /projects 
	"""
	{
		"name":"ProjectWithCucumber"
	}
	"""
Then I expect a json that contains the following
	"""
		{
			"name":"ProjectWithCucumber"
		}
	"""

@1.3
Scenario: GET a Project
Given I have set a connection to pivotal tracker service
	And I send a POST request to /projects
	"""
	{
		"name":"NewProject"
	}
	"""
When I send a GET request to /projects/{project_id}
Then I expect HTTP code 200
	And I expect a json that contains the following
		"""
		{
			"name":"NewProject"
		}
		"""

