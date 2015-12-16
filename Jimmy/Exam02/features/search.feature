Feature: Search
@test2.1
Scenario: Search for an existent item
	Given I have a list of fruits
	When I search for Apple
	Then Fruit Found message is displayed

@test2.2
Scenario: Search for an not existent item
	Given I have a list of fruits
	When I search for Banana
	Then Fruit Not Found message is displayed

