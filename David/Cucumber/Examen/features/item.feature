Feature:Define if some item exist or not

Background: Login for Search a flight
	Given David login
	When I insert a password
	Then I see a mesage

@positive
Scenario: Find an item
	Given I have a pato
	When I search in the list of items
	Then I should see a message that the item exist

@negative
Scenario: Item not exist
	Given I have a gato
	When I search in the list of items
	Then I should see a message that the item not exist  
