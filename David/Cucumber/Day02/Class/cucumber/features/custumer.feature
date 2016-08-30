Feature: Search Custumer

@normal
Scenario: 
	Given I seach client pablo
	When I insert id 2
	Then I have priced: 300

@outline
Scenario Outline: 
	Given I seach client <Custumer>
	When I insert id <ID>
	Then I have priced: <Price>
	Examples:
	|ID|Custumer|Price|
	|1 |pepe	|350  |
	|2 |pablo 	|300  |
	|3 |polonia |100  |