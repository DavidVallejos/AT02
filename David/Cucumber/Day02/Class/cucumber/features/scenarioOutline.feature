Feature: Withdraw Fixed Amount
The "Withdraw Cash" menu contains several fixed amounts to
speed up transactions for users.
Scenario Outline: Withdraw fixed amount
   Given I have <Total> in my account 
   When I choose to withdraw the fixed amount of <Extrac>
   Then I should receive <Recieve> cash
      And the balance of my account should be <Balance>
   Examples:
	| Total | Extrac | Recieve | Balance |
	| $500  | $50    | $50     | $450    |
	| $500  | $100   | $100    | $400    |
	| $500  | $200   | $200    | $300    |