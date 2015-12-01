Feature: lunch time
Scenario: buy foot in the cafeteria
Given I take a sandwich
	And I take a juice of the freezer
When I go to pay for the sandwich
Then I have a discount in my credict for the sandwich
	But not for the juice