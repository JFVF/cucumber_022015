Feature: File

@ftc_esc01
Scenario: File to compare - positive
Given I have an item to compare
When it exists in a list
Then the expected result for bike should be true  

@ftc_esc02
Scenario: File to compare - negative
Given I have an item to compare
When it does not exist in a list
Then the expected result for ship should be false
