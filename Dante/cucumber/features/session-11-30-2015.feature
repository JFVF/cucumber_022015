Feature: Manage users

this feature is intended to create, edit and delete users 

Create a user....... 

Scenario: Create a new User
    Given I am logged into a system as administrator
    When I try to create a new user "User1"
    Then new User should be listed in users list

Scenario: Edit an existing user
    Given I am logged into a system as administrator
    When I try to edit an existing user to change the name
    Then the new name should be updated and listed.
