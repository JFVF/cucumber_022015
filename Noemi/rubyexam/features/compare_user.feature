Feature: Cucumber
Background:
Given I have user list:
| Name |Password|
| maria |  123 |
| juan  |  258 | 
| pedro |  963 |  
@Compare
Scenario Outline: users login
 Given I have <Name> client for search 
   And I give <Password> password for search 
   Then I should receive "<Menssage>" for the search      
   Examples:
	| Name |Password|Menssage|
	| maria |  123 | Found|
	| pedro |  963 | Found|
	
@Negative
Scenario Outline: users login
 Given I have <Name> client for search 
   And I give <Password> password for search 
   Then I should receive "<Menssage>" for the search      
   Examples:
	| Name |Password|Menssage|	
	| jesus  |  258 |  Not found|	
	| soledar |  962 | Not found|