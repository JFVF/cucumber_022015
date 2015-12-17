@Projects
Feature: Test Projects API methods
Background: Send a connection
Given I have set a connection to application

@getAllProjects
Scenario:Get all projects
When I send a GET request to /projects.json
Then I expect HTTP code 200

@createProject
Scenario:Create a project
When I send a POST request to /projects.json with json
"""
     {
      "Content" : "My New Project virginia4",
      "Icon" : "4"

    }
"""
Then The JSON should be contain
    """
     {
      "Content" : "My New Project virginia4",
      "Icon" : 4

    }
"""

@deleteAProject
Scenario:Delete a project by id
When I send a POST request to /projects.json with json
"""
     {
      "Content" : "My New Project virginia1",
      "Icon" : "2"

    }
"""
When I send a Delete request to "/projects" with format "json"
Then I expect HTTP code 200
  And The project should be deleted

