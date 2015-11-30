Feature:Testing projects
		Create, edit, delete projects

Scenario: Create a project
Given I went to home page
When I navigate to project page
 	And I click on Create Project button
 	And I fill project name "project1"
Then I should see the project "project1" listed 

Scenario: Edit a project
Given I went to home page
 	And I created a project "project2" 
When I navigate to project page
 	And I open "project2" project
 	And I edit project name "projectUpdate"
Then I should see the project "projectUpdate" listed in project page
  