Feature: practice
Scenario: test scenario
Given I have deposited $200 in my Account
And I have $lower strings
And I have $some items

Scenario: using arguments with possible options
Given I have set a connection to $recommendation service
When I send a $GET request 
Then status $200 should be retrieved

Scenario: using arguments with possible options changing the values
Given I have set a connection to $search service
When I send a $DELETE request 
Then status $405 should be retrieved