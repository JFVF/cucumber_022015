Feature: feature file to simulate a login with different users(at least 3 users. 


@firstreport @secondreport @bothreports
Scenario Outline: login
    Given I have a username and a password
    When I enter a valid <username> and <password>
    Then I expect the message: <message>
   Examples:
 	| username | password | message | 
	| user     | userpass     | message | 
	| admin     | adminpass     | welcome | 
	| guest     | guestpass     | have a nice day | 
 
    