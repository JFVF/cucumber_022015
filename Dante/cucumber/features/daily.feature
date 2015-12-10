Feature: daily activities

this feature is intended to list of daily activities 

go home....... 
....
etc

Scenario: Go to work
    Given I am ready to go to work
    When I walk to the bus stop
    and wait for the bus
    and take the bus
    Then I should be at work
    

Scenario: cooking breakfast
    Given it is breakfast time
    and family should have breakfast
    When go to the kitchen
    and cook the breakfast
    and serve the table
    Then breakfast should be ready.
