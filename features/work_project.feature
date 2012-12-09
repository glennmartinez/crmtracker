Feature: Creating a Project
	I would like to be able to create a project
    As a user
    I want to create them easily

    Background:
        Given I am a new, authenticated user
    	Given there is a client called "Johnny"
        And that client has a project:
        | name               | description           | 
        | My Current Project |  This is my project   |
        Given I am on the homepage
        When I go to the clientspage

    Scenario: user can view navigate to their project
        And I follow "Show"
        And I should see "My Current Project"
        And I follow "My Current Project"
        Then I should see "This is my project"

    Scenario: user can delete their project
        And I follow "Show"
        And I follow "My Current Project"
        And I follow "Destroy"
        Then I should see "Project has been deleted"

