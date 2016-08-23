Feature: This is the first example of cucumber, to create a feature.

We use the lenguanje Gherking.

Scenario: Attempt withdrawal using stolen card
* I have $100 in my account
	* my card is invalid
* I request $50
* my card should not be returned
	* I should be told to contact the bank