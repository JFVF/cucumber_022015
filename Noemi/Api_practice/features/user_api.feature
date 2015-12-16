@api_test
Feature: Test API create user

Scenario: add user

Given I have set a connection to "todo.ly" service
When I send a POST request to /user.json with json
"""
    {
  "UserObject": {
    	"Email": "use123r@email.com",
    	"FullName": "Joe Blow",
    	"Password": "pASswoRd"
	  }
	}
"""

Then I expect HTTP code 200
