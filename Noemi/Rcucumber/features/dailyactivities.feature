Feature: daily activity 
Scenario:  data table example
Given a fruit list to by like this:
|   | fruit | Q | 
| 1 |  apples | 6  | 
| 2 |  bananas | 4  |
| 3 |  grapes |  10 |
When I buy only 2 of all apples
	And I buy all bananas
	And I buy also 3 melones
	And I do not find grapes
Then the fruit list should look like this:
|   | fruit | Q | 
| 1 |  apples | 2  | 
| 2 |  bananas | 4  |
| 4 |  melones | 3  |
