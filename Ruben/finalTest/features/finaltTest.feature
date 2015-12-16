@Finaltest
Feature: Final test

@scenario_1
Scenario Outline: Login with different users
Given I have a valid user <userName> 
And I have a valid pass <password> 
Then The message should be <umessage>
Examples:
| userName | password | umessage |
| user1   | 123     | Wellcome |
| user2   | 456     | Wellcome |
| user3   | 789     | Wellcome |
| user4   | 781     | Wellcome |