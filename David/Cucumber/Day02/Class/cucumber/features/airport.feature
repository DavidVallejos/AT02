#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature: Airport departure
Scenario: Lounge Screen
	Given the flight AZ4567 is leaving today
	When i see on the screen is on
	Then i should go to the departure

	Given the flight C038 is leaving today
	When i see on the screen is on
	Then i should go to the departure

	Given the flight BA01618 is leaving today
	When i see on the screen is on
	Then i should go to the departure