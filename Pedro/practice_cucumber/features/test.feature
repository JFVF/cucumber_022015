Feature: This is the feature title
This is the description of the feature, which can span multiple lines.
You can even include empty lines, like this one:

In fact, everything until the next Gherkin keyword is included in the description.
The text immediately following on the same line as the Feature keyword is the
name of the feature, and the remaining lines are its description. 

Scenario: Common actions that can be found on my work.

Given I created a power-user
When can_admin_agent is set to true
	And agent_count is set to a number
	But agent_count is not 0 or less
		And agent_count is not greater than 200
Then power-user should be able to administrate an agent

Given I created a disk-safe
When update the description
Then disk-safe description should be updated.
