#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature:
Scenario:
	Given I get ZipCode with 1234 
	When i can excecute the file
	Then i should see only digits

	Given I get a Username with admin
	When i can see leters only in lower case
	Then i should have an user

	Given I get a Country citie@#$
	When i can see any characters exept difits
	Then i should have a country