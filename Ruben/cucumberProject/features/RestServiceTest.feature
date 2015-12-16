@Apitest
Feature: Test API

@scenario_1A
Scenario: Validate json response after create a new project
Given I have set a connection to application
When I send a POST request to /projects.json with json
"""
{
  "Content": "test9"
}
"""
Then I expect JSON equal to
"""
{
  "Content": "test9",
  "ItemsCount": 0,
  "Icon": 0,
  "ItemType": 2,
  "ParentId": null,
  "Collapsed": false,
  "Children": [],
  "IsProjectShared": false,
  "ProjectShareOwnerName": null,
  "ProjectShareOwnerEmail": null,
  "IsShareApproved": false,
  "IsOwnProject": true,
  "Deleted": false,
  "SyncClientCreationId": null
}
"""

@scenario_1B
Scenario: Add new task into specific project
Given I have set a connection to application
When I send a GET request to /projects.json
And I send a POST request to /Items.json with json
"""
{
  "Content": "new task - test",
  "ProjectId": "3493758",
  "DueDate": ""
}
"""
Then I expect HTTP code 200

@scenario_1C
Scenario: Validate status 200 for get user end point
Given I have set a connection to application
When I send a GET request to /user.json
Then I expect HTTP code 200
And I expect JSON response equal to
"""
{
  "Id": 573702,
  "Email": "ruben_arkaitz@hotmail.com",
  "Password": null,
  "FullName": "Ruben",
  "TimeZone": 0,
  "IsProUser": false,
  "DefaultProjectId": 3493116,
  "AddItemMoreExpanded": false,
  "EditDueDateMoreExpanded": false,
  "ListSortType": 0,
  "FirstDayOfWeek": 0,
  "NewTaskDueDate": -1,
  "TimeZoneId": "Venezuela Standard Time"
}
"""