#This features cover the resources from Admin Web Client
Feature: Admin Resource

Scenario: Create Resource
Given I have the Resource wizard opened 
When I fill the name for the resource
	And I select the icon for the resource
	And I click the create button
Then the new resource is displayed in the Admin-Resource web page


Scenario: Delete Resource
Given I have the Admin-Resource web page opened
	And I have a Resource 'resource_1' created
When I select the Resource 'resource_1' 
	And I click the delete button
Then the Resource 'resource_1' is no longer present on the Admin-Resource web page

