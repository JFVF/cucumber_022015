@api_test
Feature: Test API create project


Scenario: Create project
Given I have set a connection to application for testing the project feature
When I send a POST request for project to /projects.json using the project feature
"""
{
    "Content" : "new_tested_project",
    "Icon" : 7
}
"""
Then I expect HTTP code 200 on project feature


Scenario: Delete project
Given I have set a connection to application for testing the project feature
When I send a DELETE request for project to /projects/[id].json using the project feature
Then I expect HTTP code 200 on project feature