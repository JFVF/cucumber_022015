@compare_feature
Feature: Compare data

Background:
	Given the following list
	"""
	abc, 123, def, 456

	"""
@positive_comparing
Scenario: Look for an item (positive case)
	Given I have a list
	When I look for "abc"
	Then I should see a message

@negative_comparing
Scenario: Look for an item (negative case, element does not exist)
	Given I have a list
	When I look for "3234"
	Then I should see "Element is not found"

