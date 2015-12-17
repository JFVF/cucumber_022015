@Apitest
Feature: Test api

@scenario_2A
Scenario: Update a project
Given I have set a connection to application
When I send a GET request to /projects.json
And I send a PUT request to /projects/[id].json with json
"""
   {
	"Content": "test7 updated",
  "Icon":"12"
   }
"""
Then I expect HTTP code 200

@scenario_2B
Scenario: Validate json response related to Get filter list
Given I have set a connection to application
When I send a GET request to /filters.json
Then I expect JSON response equal to
"""
[
  {
    "Id": 0,
    "Content": "Inbox",
    "ItemsCount": 0,
    "Icon": 15,
    "ItemType": 4,
    "Children": []
  },
  {
    "Id": -1,
    "Content": "Today",
    "ItemsCount": 0,
    "Icon": 16,
    "ItemType": 4,
    "Children": []
  },
  {
    "Id": -5,
    "Content": "Next",
    "ItemsCount": 0,
    "Icon": 20,
    "ItemType": 4,
    "Children": []
  },
  {
    "Id": -3,
    "Content": "Recycle Bin",
    "ItemsCount": 9,
    "Icon": 18,
    "ItemType": 4,
    "Children": []
  }
]
"""

@scenario_2C
Scenario: Validate json response related to Get filter by id
Given I have set a connection to application
When I send a GET request to /filters/0.json
Then I expect HTTP code 200
And I expect JSON response equal to
"""
{
  "Id": 0,
  "Content": "Inbox",
  "ItemsCount": 0,
  "Icon": 15,
  "ItemType": 4,
  "Children": []
}
"""