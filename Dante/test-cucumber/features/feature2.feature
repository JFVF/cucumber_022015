Feature: compare data from a list

This feature is to compare data from a list

@both @report2
Scenario: Scenario 1, it is expected to find an item
    Given I have a list of items
    When I look for a item data2
    Then I expect to receive the message ok
   
@both @report1
Scenario: Scenario 2, it is not expected to find an item
    Given I have a list of items
    When I look for a item not_exist
    Then I expect to receive the message NO

  