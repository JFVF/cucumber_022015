@login_feature
Feature: Simulate login

@login_scenario
Scenario Outline: Login with different users
    Given I set <Username> as username
    And I set <Password> as password
    When I click "login" button
    Then I should see a <Message>
    
    Examples:
    | Username | Password | Message          |
    | standard |  12345   | "Welcome"        |
    | full     |  abc123  | "Have a nice day"|
    | standard |  12345   | "Hello"          |
    | standard |  12345   | "Good morning"   |
