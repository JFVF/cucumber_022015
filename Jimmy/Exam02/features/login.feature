Feature: Login
@test1.1
Scenario Outline: Login Message
Given I entered my username <USERNAME>
	And I entered my password <PASSWORD>
When I click login button
Then the following message is diplayed <MESSAGE>
Examples:
	| USERNAME | PASSWORD  | MESSAGE         | 
	| Gordines | control   | Welcome         |
	| agapito  | tester	   | Have a nice day |
	| jism     | control123| Hello           |