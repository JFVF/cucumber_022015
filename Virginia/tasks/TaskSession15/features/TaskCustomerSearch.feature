@customerSearch
Feature: Customer search 

@storeInformation
Scenario Outline: Store the information of clients
Given I stored information of client <clientId> <clientName> <totalPriced> 
Examples:
    | clientName | clientId | totalPriced| 
    | client1    | 10       | $101       | 
    | client2    | 20       | $202       | 
    | client3    | 30       | $303      | 

@searchClients
Scenario: Search Clients 
When I search "client3"
Then The client should exist in the client list 