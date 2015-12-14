Feature: Projects in Todo.ly

This feature is intended to use some API methods (GET, POST) to get information and register information about projects in Todo.ly web site

Scenario: Get all projects
    Given I set a connection to todo.ly
    When I send a GET request to https://todo.ly/api/projects.json
    Then I expect HTTP code 200
    

Scenario: Create a new Project
    Given I set a connection to todo.ly
    When I send a POST request to https://todo.ly/api/projects.json with json
            """
                {
                    "Content": "newProject-Dante",
                    "Icon": 1
                }
            """

    Then I expect HTTP code 200.

Scenario: create a new project without name
    Given I set a connection to todo.ly
    When I send a POST request to https://todo.ly/api/projects.json with json
            """
                {
                    "ID": "newProject",
                    "Icon": 1
                }
            """
    Then I expect json:
        """
            {
        "ErrorMessage": "Too Short Project Name"
        "ErrorCode": 305
        }
        """


