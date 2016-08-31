Feature: Search Custumer

@load
Scenario: Load users from yml file
	Given Admin user is define
	When I verify patricio exist
		And I verify estefano does not exist
	Then I print a list from users
	
@normal
Scenario: Print static custumer
	Given I seach client pablo
	When I insert id 2
	Then I have priced: 300

@outline
Scenario Outline: Print a outline custumer
	Given I seach client <Custumer>
	When I insert id <ID>
	Then I have priced: <Price>
	Examples:
	|ID|Custumer|Price|
	|1 |pepe	|350  |
	|2 |pablo 	|300  |
	|3 |polonia |100  |