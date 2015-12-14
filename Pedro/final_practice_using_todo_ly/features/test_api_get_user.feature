@api_test
Feature: Test API get user

Scenario: Get user
Given I have set a connection to application
When I send a GET request to /user.json
Then I expect HTTP code 200 