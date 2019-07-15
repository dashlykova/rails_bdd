Feature: List articles on the landing page
  As a visitor,
  When I visit the landing page of the application
  I would like to see a list of all articles

  Background: 
    Given I visit the "landing" page
    Then I should see "You need to sign in or sign up before continuing."
    And I fill in "Email" with "david@bowie.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    # And I should see "Signed in successfully."
    And the following articles exist
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: View list of articles on the user page
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"