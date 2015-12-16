@second_feature
Feature: Second

@find_element
Scenario: Expect to find item in list
Given I have a list with elements
When I search for the element blue
Then I expect to find that element

@not_find_element
Scenario: Expect not to find item in list
Given I have a list with elements
When I search for the element black
Then I expect to not find that element


