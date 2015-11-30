Feature: Add user
Scenario: create a new user
Given I logined as admin
When I go to user page
	And I click on add user button
	And I fill the name user
	And I fill the password
	And I click on save button
Then message user added successfully is displayed
	And the user is stored on bd
