Feature: Feature file to compare a data from a list and define if the item exists or not

@secondreport @bothreports
Scenario: Look for an specific item and expect to find it.(positive)
    Given I have a list of items
    When I look for an item: item1
    Then I expect to find it
   
@firstreport @bothreports
Scenario: Look for an specific item and expect to not find it, but see a message that item is not found.(negative)
    Given I have a list of items
    When I look for an item: items
    Then I expect to not find it

  