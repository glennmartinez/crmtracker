Feature: Creating Clients
    In order to have projects to assign tickets to
    As a user
    I want to create them easily

    Background:
        Given I am on the homepage

    Scenario: Client can navigate to the create project screen
        When I go to the clientspage
        And I follow "New Client"
        And I fill in "Firstname" with "First Client"
        And I fill in "Email" with "firstclient@gmail.com"
        And I press "Save"
        And I should see "Client has been created." 
   


