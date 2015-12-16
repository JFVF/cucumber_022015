@api_test
Feature: Test API create project

Scenario:

Given I have set a connection to todo.ly service
When I send a POST request to /projects.json with json
"""
    {
  		"Content":"Using Ruby cucumber"
	}	
"""

Then I expect HTTP code 200
And I expect a json that contains the following
"""
	{
		"Content":"Using Ruby cucumber"
	}
"""
