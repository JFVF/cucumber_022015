
Feature: Step Options
Scenario: Step definition with two options
	Given I have a step that received one of two arguments $37
		And I have a step that received one of two arguments $50
		And I have a step that received one of two arguments $60 # this one should be marked as undefined