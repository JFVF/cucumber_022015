Feature: Daily activities

Background: Get ready to eat
Given I am going to eat
When it is time to eat
Then I clean myself up
 And get confortable cloth

Scenario: Have breakfast
Given I am ready to eat
When the food is ready
Then I enjoy my food

Scenario: Have lunch
Given I got the next meals to eat
|pizza|
|sillpancho|
|meat and salad|
|soup|
When I eat a sillpancho
Then the meals remaining look like this:
|pizza|
||
|meat and salad|
|soup|