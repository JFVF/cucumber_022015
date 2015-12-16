Feature: Daily activities
Background: Go to my work
Given I wake up at 6:30 am
    And I walk 3 blocks
    And I take a buss to Quillacollo
    And I take a buss to Cochambamba
Then I should arrive to my work 

Scenario:Scrum meeting
Given I wait until 9 am
Then I should attend to scrum meeting

Scenario:Automate
Given A matrix of test cases to automate like this:
| test1| pending | |
| test2| pending | | 
| test3| pending | |
When Virginia completes test case: test1
When Juan completes test case: test3
Then A dessert menu should look like this:
| test1| done    | Virginia |
| test2| pending |          |
| test3| done    | Juan     |
