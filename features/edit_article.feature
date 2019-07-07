Feature: Edit articles
    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

  Background:
    Given I visit the "landing" page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: Edit an article
    When I visit the site
    When I click "Edit" link
    When I fill in "Title" with "David Bowie"
    And I fill in "Content" with "Heroes"
    And I click "Update Article"
    Then I should be on "David Bowie" page
    And I should see "Article was successfully created."
    And I should see "David Bowie"
    And I should see "Heroes"