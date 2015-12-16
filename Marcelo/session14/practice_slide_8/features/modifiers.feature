Feature: Practice having modifiers

Scenario: Description 01
	Given I have created 2 Iterations
	And I click on index Project
	When I start the first Iteration in selected "Release"
	Then it should become as "Starting"

Scenario: Description 02
	Given I have created 1 Iteration
	And I go to index Project
	When I close Iteration in selected "Project"
	Then it should become as "Finished"