Feature: Creating a Project
	I would like to be able to create a project
    As a user
    I want to create them easily

    Background:
    	Given there is a client called "Johnny"
        Given I am on the homepage
        When I go to the clientspage


    Scenario: Creating a project for a client
        When I follow "Show"
        And I should see "Johnny"
        And I should see "Create Project"

     



