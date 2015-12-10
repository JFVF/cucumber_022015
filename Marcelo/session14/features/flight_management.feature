Feature: Flight management

Scenario: Flights

	Given the flight EZY4567 is leaving today
	    And the flight C038 is leaving today
		And the flight C038 is leaving today
		And the flight BA01618 is leaving today
  	When Client book the fly with %10 of total amount
  	Then Client will receive a ticket