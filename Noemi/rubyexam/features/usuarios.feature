Feature: Cucumber
Background:
Given I have user list like this:
| Name |Password|Menssage|
| maria |  123 | Welcome|
| juan  |  258 | Have a nice day|
| pedro |  963 | Welcome|   

@Login
Scenario Outline: users login
 Given I have <Name> client 
   And I give <Password> password
   Then I should receive "<Menssage>"       
   Examples:
	| Name  |Password |Menssage|
	| maria |  123 | Welcome|
	| juan  |  258 | Have a nice day|
	| pedro |  963 | Welcome|
