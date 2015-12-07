#8
#1. Question mark modified for singular and plurar
#2. Multiple captures of data
#3. Noncapturing group
Feature: Practic definition class 14 
Scenario: practice
When I eat 20 apples from store
Then I pay $50 by "money" payment
	And I have $20 in my account
Scenario: apple
When I eat 1 apple from store
Then I pay $2 by "credit card" payment
	And I have $23 in my account
