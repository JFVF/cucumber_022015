Feature: Test definition
Scenario: example definition
#let’s examine the step definition in detail:
#Considering the Step :
Given I have saved $2600 in my Account
Then I retreat $60 of my Account
	And I retreat $200 of my Account
Then I have saved $2340 in my Account

Scenario: example definition not created
#let’s examine the step definition in detail:
#Considering the Step :
Given I have saved $1200 in my Account
Then I retreat $60 of my Account
	And I retreat $1000 of my Account
Then I have saved $140 in my Account