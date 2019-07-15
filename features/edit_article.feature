Feature: Edit articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

  Background:
    Given I visit the "landing" page
    Given I fill in "Email" with "david@bowie.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    And the following articles exist
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
    # Then I should see "Signed in successfully."
    

  Scenario: Edit an article
    When I should see "Signed in successfully."
    And I click "Edit" link
    And show me the page
    And I fill in "Title" with "David Bowie"
    And I fill in "Content" with "Heroes"
    And I click "Update Article"
    Then I should be on "David Bowie" page
    And I should see "Article was successfully created."
    And I should see "David Bowie"
    And I should see "Heroes"