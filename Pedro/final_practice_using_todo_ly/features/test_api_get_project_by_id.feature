@api_test_1
Feature: Test API get project by id

Scenario: Get project by id
Given I have set a connection to application for testing the project feature
When I send a GET request to /projects/3486534.json using the project feature
Then I expect HTTP code 200 on project feature 