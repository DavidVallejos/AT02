#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature: Daily University
	Create two scenaries from my daily university

Scenario: Take a especific class
Give pay for the class
When i go to the class and pay for that
Then i can take the class on mi schedule

Scenario: Take a buss to the university
Given i have to go to the university
When i search a buss that go to the university
Then i can take that buss