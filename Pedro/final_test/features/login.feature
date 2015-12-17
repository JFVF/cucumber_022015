Feature: Login

@l_esc01
Scenario Outline: Simulating login

Given I have a <Username>
 And a <Password>
When I log in to the application
Then I should be greated with this <Greeting>  

Examples:
| Username | Password | Greeting        |
| rodrigo  | ro571    | Hi_sr           |
| luis     | lu67     | Good_day        |
| octavio  | oc8      | Have_a_nice_day |

