Feature:Testing my daily activities

Scenario: Go to work
When I wake up at 6:30 am
	And I walk 3 blocks
	And I take a buss to Quillacollo
	And I take a buss to Cochambamba
Then I arrive to my work

Scenario: Automated a test case
Given I had the excel file with the test cases
    And I select a test case
    And I review if theselected test cases is clear
When I open the IntelliJIDEA 
    And I automate the preconditions for test case
    And I automate the steps of test case
    And I automate the expected and actual result of test case
    And I automate the postconditions for test case
    And I compile the code
Then I should see that compilation is completed successfully
When I execute the test case
Then The text cases should be executed successfully