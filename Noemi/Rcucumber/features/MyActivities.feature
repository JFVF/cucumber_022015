Feature: Activities on a day
Scenario: Go to Jala
Given I had 15 min
When I take a taxi
Then I arrive to Jala on time

Given I had 30 min
When I tad a trufi
When I walk 3 blocks
Then I arrive to Jala on time

Given I had 20 min
When I tad a trufi
When I walk 3 blocks
Then I arrive to Jala late


Scenario: Go to scrum
Given It was 10 a.m.
When I ask all are ready for scrum
When I start the call
Then the team give our status

Scenario: do plan for spring
Given we finished the last spring
When I list the no-completed tasks
	And I add the new tasks
	And we give priorities to task
	And I save the new spring
Then the new spring is solved
	And the spring start today