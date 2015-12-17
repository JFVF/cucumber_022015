Feature: simulate a login with different users

This feature is to simulate a login process with different users.

@both @report1 @report2
Scenario Outline:login scenario
Scenario: Login
    Given I have a username and a password
    When I enter a valid <username> and <password>
    Then I expect the message <message>
   Examples:
 	| username | password | message | 
	| user1     | pwd1     | welcome1 | 
	| user2     | pwd2     | welcome1 | 
	| user3     | pwd3     | welcome1 | 
 
    