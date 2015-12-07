 
Feature: tic-tac-toe game
Scenario: game a
Given a board like this:
|    | 1 | 2 | 3 |
| 1 |   |   |   |
| 2 |   |   |   |
| 3 |   |   |   |
When player x plays in row 2, column 1
When player y plays in row 2, column 2
When player x plays in row 1, column 2
When player y plays in row 3, column 2
Then the board should look like this:
|    | 1 | 2 | 3 |
| 1 |    | x  |   |
| 2 | x | y  |   |
| 3 |    |  y |   |

