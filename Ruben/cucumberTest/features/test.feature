Feature: Practice
Scenario: Validate xml data response from recommendationAPI
Given I have set a connection to recommendationAPI service
When I send a GET request to "url"
Then Content Type Response should be in xml format 
    And The XML recommendation response should match with query with "abc" sku and "some" type
    And I expect HTTP code 200
    And I expect a message equal to "OK"

Scenario: Get method displays the results with highest Weight
Given I have set a connection to recommendationAPI service
When I send a GET request to "url"
Then I expect HTTP code 200
	And I expect a message equal to "OK"
    And The XML recommendation response should match with query with "abc" sku and "some" type