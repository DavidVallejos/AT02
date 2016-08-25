#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature: Practice two scenaries
Write a feature file that contains 2 scenarios, each one with steps that need a step definition with:
1. Question mark modified for singular and plurar
2. Multiple captures of data
3. Noncapturing group

Scenario: Add two numbers
    Given I have powered calculator on
    When I enter 50 into the calculator
    	And I enter 70 into the calculator
    	And I press add
    Then I would see on the screen

Scenario: Buy toys
	Given I have 100$ on my credit card
		And I have 50$ on my pant
	When I buy a toys for my daugther
		And I buy a toy for my son
	Then I have 0$ of money