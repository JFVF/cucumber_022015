@api_test
Feature: Test API create user
@Getpost
Scenario:

Given I have set a connection to application
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
    And I expect JSON equal to
      """
      {
       "ErrorMessage": "Invalid Email Address",
       "ErrorCode": 307
      }
      """ 
@GetUser
Scenario: Get user
Given I have set a connection to application
When I send a GET request to /user.json
Then I expect HTTP code 200
    And I expect JSON equal to
      """
      {
"Id": 548079,
"Email": "virginia.test.jala@gmail.com",
"Password": null,
"FullName": "virginia sanabria",
"TimeZone": 0,
"IsProUser": false,
"DefaultProjectId": 3414377,
"AddItemMoreExpanded": false,
"EditDueDateMoreExpanded": false,
"ListSortType": 0,
"FirstDayOfWeek": 0,
"NewTaskDueDate": -1,
"TimeZoneId": "Russian Standard Time"
}
      """       

