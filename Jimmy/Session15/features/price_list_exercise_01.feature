
Feature: Price List

@priced_list_outline
Scenario Outline: Search for Total List Priced Outline
Given I have a list with the USERS with ID
	And I have a list with the TotalPriced for the ID
When I search for an user by <ID>
	Then the <ID>, <User> and <TotalPriced> is returned
	Examples:
	| ID  | User  	  | TotalPriced |
	| 001 | Jimmy	  | 1000        |
	| 002 | Agapito   | 500		    |
	| 003 | Josenildo | 150			|

@priced_list
Scenario: Search for Total List Priced
Given I have a list with the USERS with ID
	And I have a list with the TotalPriced for the ID
When I search for an user by 002
	Then the 002, Agapito and 500 is returned
