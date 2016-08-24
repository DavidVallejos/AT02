#©Copyright 2016 David Vallejos
#All rights reserved.
#@David.vallejos@gmail.com

Feature: Login with an acount
	Feature to log in a page
Scenario: Login
	Given I select Sign in
	Given I select Create and account
	When I see a message Login succesful
	But I see a message You are not register
	Then I can clic on the button next