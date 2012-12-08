Feature: Creating Clients
    User can register into the site and be logged in successfully

    Background:
        Given I am on the homepage
        When I go to the registerpage



    Scenario: User can register
        And I fill in "user_email" with "test@gmail.com"
        And I fill in "user_password" with "testing"
        And I fill in "user_password_confirmation" with "testing"
        And I press "Sign up"
        Then I should see "Current User: test@gmail.com"   



