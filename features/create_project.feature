Feature: Creating a Project
	I would like to be able to create a project
    As a user
    I want to create them easily

    Background:
        Given I am a new, authenticated user
        Given there is a client called "Johnny"
        Given I am on the homepage
        When I go to the clientspage


    Scenario: User can create a project
        When I follow "Show"
        And I should see "Johnny"
        And I should see "Create Project"
        And I follow "Create Project"
        And I fill in "Name" with "My first project"
        And I fill in "Description" with "This is my first project"
        And I press "Save"
        And I should see "Project was successfully created"

    Scenario: Client can view their projects in a list
        When I follow "Show"
        And I should see "Johnny"
        And I follow "Create Project"
        And I fill in "Name" with "My first project"
        And I fill in "Description" with "This is my first project"
        And I press "Save"
        And I should see "Project was successfully created"
        And I follow "Johnny"
        And I should see "My first project"


     



