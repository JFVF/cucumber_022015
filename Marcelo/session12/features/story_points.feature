Feature: Handle Story points as effort type for Devops objects

Scenario: Set Effort type on Scenario object

	Given there is a User
		  And there is a Scenario created
	When Scenario is opened
		 And Effort type is selected to Points
	Then Effort type should display Points

Scenario: Add Estimated Effort based on Points format
	Given there is a User
		  And there is a Scenario created having Points as format
	When Scenario is opened
		 And Tasks tab is clicked
		 And Tasks 'Add New Task' icon is clicked
		 But there is no Tasks
		 And a Task Activity is added having an Estimated Effort "5 points"
	Then Estimated Effort should display "5 points"