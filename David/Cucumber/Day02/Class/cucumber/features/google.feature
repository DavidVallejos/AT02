#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature: Test of Google Main Page
	Create scenaries for test a main page of the google
Scenario: Go to the main page
	Given i am on the maing page
	When i clic on the browser 
		And put url www.google.com 
	Then i should see the main page of google

Scenario: Search a topic
	Given i am on the bar for search "music"
	When i clic on the search bar from google
		And i write music
		And i to put on Search button
	Then i should see a specific numbers of results

Scenario: Go to the link "conditions"
	Given i go to the conditions
	When i clic on the Conditions botton
	Then i should have the url https://www.google.com.bo/intl/es-419/policies/terms/regional.html