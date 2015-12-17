@first_feature
Feature: First

@login_user
Scenario Outline: Login User
Given I type the username <Username>
	And I type the password <Password>
When I click the button Login
Then I expect to receive the message <Message>
Examples:
	| Username | Password | Message           | 
	| one      | control1 | Welcome           |
	| two      | control2 | Have a nice day   |
	| three    | control3 | Greetings         |

	