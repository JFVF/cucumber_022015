Feature: Project
Scenario: list all projects
Given I have set a connection to "todo.ly" service
When I send a GET request to "/projects.json" 
Then I expect HTTP code 200
 And I get the list the projects