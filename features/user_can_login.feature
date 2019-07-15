Feature: User can login
    As a user
    In order to access my account
    I would like to be able to log in

    Background:
        Given the following user exists
            | email           | password |
            | david@bowie.com | password |
        And I visit the site
        And I click "Log in"

    Scenario: User can login successfully
        When I fill in "Email" with "david@bowie.com"
        And I fill in "Password" with "password"
        And I click "Log in"
        Then I should see "Signed in successfully."

    Scenario: User cant login with invalid Email [Sad Path]
        When I fill in "Email" with "hoedoe"
        And I fill in "Password" with "password1"
        And I click "Log in"
        Then I should see "Invalid Email or password"

    Scenario: User cant login with invalid password
        When I fill in "Email" with "john@doe.com"
        And I fill in "Password" with ""
        And I click "Log in"
        Then I should see "Invalid Email or password"