Feature: Catch a flight

Background: Login for Search a flight
	Given David login
	When I insert a password
	Then I see a mesage
@outline
Scenario Outline: Search a flight
	Given I am login
		And I select the <Origin>, <Destination>, <Date>
	When I search the <Availability>
	Then I see a mesage if my <Flight> is availability
	Examples:
	|Origin|Destination|Date	  |Availability|Flight|
	|TJA   |CBA		   |09/01/2016|OK		   |0375  |
	|SCZ   |LPZ		   |10/02/2016|OK		   |0220  |