Feature: Cliente
Scenario: create list
	Given I have empty list
@outline
Scenario Outline: Fill user client
	Given I add client <Id> with name <Name> and <TotalPrice>   
	Examples:
	| Id 		| Name | TotalPrice |
	| 2001     | Juna      | $400      |
	| 2002     | Maria     | $100      | 
	| 2003     | Pedro     | $200      | 
@outline
Scenario Outline: search totalprice by name
 Given I have <NameClient> client 
   When I ask for TotalPrices
   Then I should receive <ExpectePrice>       
   Examples:
	| NameClient | ExpectePrice |
	| Maria     | $100   |
	| Soledad   | $0     |
	| Juna      | $400   |
@normal
Scenario: search totalprice if Pedro
 Given I have Pedro client 
   When I ask for TotalPrices
   Then I should receive $200