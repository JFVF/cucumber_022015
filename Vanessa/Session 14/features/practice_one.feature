Feature: Practice One

Scenario:
Given I have to eat 10 apples

Scenario:
Given I have to eat 1 apple

Scenario:
Given I have to eat 2 oranges


Scenario:
Given I want to buy "2" computers
	And the payment is done using credit-card
When I give the $100
Then I want to receive the invoice

Scenario:
Given I want to buy "3" computers
	And the payment is done using cash
When I give the money
Then I want to receive the bill