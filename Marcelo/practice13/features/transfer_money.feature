Feature: Transfer money between banks

Scenario: Transfer money

    Given Client has an account
    When Client deposit $100 to an account
         And Client deposit $200 to an account
    Then Balance should reflect those amounts