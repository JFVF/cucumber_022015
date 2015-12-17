@List
Feature: Testing lists 

@ExistData
Scenario: A data exist in a list
When I search the client "maria"
Then The client should exist in the client list 

@ExistData
Scenario: No exist  data in a list
When I search the client "Maria"
Then The client should not exist in the client list 