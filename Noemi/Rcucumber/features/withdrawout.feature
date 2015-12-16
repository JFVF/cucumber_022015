Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
speed up transactions for users.

Scenario Outline: Withdraw fixed amount
   Given I have <Balance> in my account 
   When I choose to withdraw the fixed amount of <Withdrawal>
   Then I should receive <Received> cash
      And the balance of my account should be <Remaining>
   Examples:
	| Balance | Withdrawal | Received | Remaining |
	| $500     | $70           | $70       | $430         |
	| $500     | $100          | $100      | $400         |
	| $500     | $200          | $200      | $300         |

Scenario: Withdraw fixed amount of $50
   Given I have $500 in my account
   When I choose to withdraw the fixed amount of $50
   Then I should receive $50 cash
         And the balance of my account should be $450

Scenario Outline: Withdraw fixed amount
   Given I have <Balance> in my account 
   When I choose to withdraw the fixed amount of <Withdrawal>
   Then I should receive <Received> cash
      And the balance of my account should be <Remaining>
   Examples:
	| Balance | Withdrawal | Received | Remaining |
	| $200     | $50           | $70       | $130         |
	| $200     | $100          | $100      | $100         |
	| $200     | $200          | $200      | $0         |

