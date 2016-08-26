Feature: Nice Week
  That week when I have time to go out of home
  and have a nice week

  Background: Leaving home
    Given I have a time
    When I clean my car 
    Then I should get the car

  Scenario: Go to park
    Given I do not have money
    When I think on a free parks around my house
    Then I should choose a park is closer

  Scenario: Go to the market
    Given I have shopping list like:
    |Product|Quantity|
    |bread|20|
    |wine|2|
    |water|10|
    |soap|5|
    When I can change wine and 2
    Then shopping list loks like this:
    |Product|Quantity|
    |bread|20|
    |wine|2|
    |water|10|
    |soap|5|