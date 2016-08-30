Feature: Login
Scenario: Successful login with PIN
When I have authenticated with the correct PIN
Then I should see the main menu

Scenario: Withdraw fixed amount of $50
Given I have $500 in my account
When I have authenticated with the correct PIN
When I choose to withdraw the fixed amount of $50
Then I should receive $50 cash
And the balance of my account should be $450