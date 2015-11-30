Feature: Agents, Users, Disk Safes feature

Scenario:
Given there is an agent added to the SBM
	And a admin user was created
	And the admin user has full privileges
When the agent is related to the admin user
Then the user should have full permissions in the agent

Scenario:
Given there is an agent added to the SBM
	And a disk safe is created using a path
	And that disk safe is associated to that agent
	And that disk safe has encryption
When a policy is created
	And the policy has a backup schedule
	And the policy has a verification schedule
	And the policy is associated to that disk safe
Then the policy should be related to that agent
	Then the policy should be related to that disk safe


