Feature: Add user
Scenario: create a new user
Given I logined as admin
When I go to user page
	And I click on add user button
	And I fill the name user
	And I fill the password
	And I click on save button
Then message saying user added successfully is displayed
	And the user is stored on bd

Scenario: create an user with already existing name
Given I logined as admin
When I go to user page
	And I click on add user button
	And I fill the name user with existing one
	And I fill the password
	And I click on save button
Then message saying that the username already exists is displayed
	And the new user is not stored on bd

Scenario: create an user without password
Given I logined as admin
When I go to user page
	And I click on add user button
	And I fill the name user 
	And I left empty the password
	And I click on save button
Then message saying validation error,check all from values for specific errors. is displayed
	And the new user is not stored on bd