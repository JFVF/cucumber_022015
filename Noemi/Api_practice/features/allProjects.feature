Feature: Project

@HTTP
Scenario: list all projects
Given I have set a connection to "todo.ly" service
When I send a GET request to "/projects.json" 
Then I expect HTTP code 200
 And I get the list the projects

@JSON
 Scenario: Add new project
Given I have set a connection to "todo.ly" service

When I send a POST request to /projects.json with json
"""
{
"Content": "New project cucumber"  }

"""
And I expect JSON contain 
    """
      {
	"Content": "New project cucumber"  }
     """ 
@Both
Scenario: Delete all projects
Given I have set a connection to "todo.ly" service
When I send a GET request to "/projects.json" 
Then I expect HTTP code 200
 And I get the list the projects
 And I delete all projects
 And I expect HTTP code 200
 And I expect JSON equal to 
 	"""
      []
    """ 

