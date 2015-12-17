@Login
Feature: Login testing

@LoginDiferentsUsers
Scenario Outline: Login with different users 
Given I entered username <username>
	And I entered password <password>
Then I should get message <message>	
Examples:
    | username | password   | message        | 
    | maria    | Control1   | Welcome        | 
    | diego    | Control12  | Have a nice day| 
    | manuel   | Control123 | Good morning   | 