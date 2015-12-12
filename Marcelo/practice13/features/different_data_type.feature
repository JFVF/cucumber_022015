Feature: Create steps definitions that will contain different data type

Scenario: Test different data type in scenarios

    Given Client deposit $100 in company Account
    When Company confirms the deposit it gives a "bonus"
    Then Client is able to pick up "bonus" 
    And sent it to its "clients in Bolivia"