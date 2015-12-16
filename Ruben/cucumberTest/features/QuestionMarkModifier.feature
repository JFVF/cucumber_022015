Feature: practice
Scenario: flight
Given I have 1 cucumber in my basket
	And I have 256 cucumbers in my basket

Scenario: Transfer funds from savings into checking account
Given I have deposited $10 in my Checking Account
     And I have deposited $500 in my Savings Account
When I transfer $500 from my Savings Account into my Checking Account
Then the balance of the Checking Account should be $510
     And the balance of the Savings Account should be $0

Scenario: Eat apples
Given I have 5 dolars in my wallet
	And I have 20 dolars in my account
When I eat 1 apple today
	And I eat 5 peaches today
Then I pay 1 dolar for apple with money
	And I pay 10 dolars for peache with credit card