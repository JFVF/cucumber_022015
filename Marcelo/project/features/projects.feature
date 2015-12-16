@all_features
Feature: Implement verification for Projects

@scenario1
Scenario: Verify all projects can be gotten

    Given I have set a connection to API
    When I send a GET request to /projects.json
    Then I expect HTTP code 200

@scenario2
Scenario: Create a Project
    Given I have set a connection to API
    When I send a POST request to /projects.json with json
"""
    {
        "Content": "Project123456",
        "Icon": 3
    }
"""    
    Then I expect HTTP code 200

@scenario3
Scenario: Get Project data
    Given I have set a connection to API
    When I send a GET request to /projects/3494284.json
    Then I expect HTTP code 200
    And response should contain that "ItemType" of Project is 2