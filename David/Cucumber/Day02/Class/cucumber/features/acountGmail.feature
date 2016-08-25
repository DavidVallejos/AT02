#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature: Create a new acount on Gmail
Scenario: Introduce first name
	Given My cursor is on the box of first name
	When I put a name david
		And press put tab
	Then I see a green mark around the box

Scenario: Introduce last name
	Given My cursor is on the box of last name
	When I put a last name vallejos
		And press put tab
	Then I see a green mark around the box

Scenario: Choose a username
	Given My cursor is on the box of the acount
	When I put a acount like dav.23second or merch_first323
	Then I see a green mark to accept my username

Scenario: Create a password
	Given My cursor is on password
	When I put a password that acept weq2314ASD
		And I put confirm password
	Then I see a green mark to accept my password

Scenario: Choose a birthday
	Given I choose my month
		And I put day
		And I put a year
	When I choose one of the 12 months
		And I put a day of 1 to 30
		And I put a year 1999
	Then I see a geen mark to accept my birthay

Scenario: Choose a gender
	Given I choose gener
	When I choose Male Female or Other
	Then I see a green mark that verify I choose one

Scenario: Put a phone number
	Given I choose a country
		And I put a cell number
	When I choose Bolivia flag
		And I put a number 78974624
	Then I see geen mark that accept my number

Scenario: Put a current email
	Given My cursor is on the box of current email
	When I put a acount like dav.23second@gmail.com or merch_first323@outlook.com.bo
	Then I see a green mark to accept my username