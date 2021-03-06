Feature: Comment on article
    As a visitor
    In order to give my opinion on the articles
    I would like to be able to comment on the articles

  Background:
    Given I visit the "landing" page
    Given the following articles exists
      | title                | content                          |
      | A breaking news item | Some really breaking action      |
      | Learn Rails 5        | Build awesome rails applications |

  Scenario: Visitor can comment on articles
    When I visit the site
    When I click "Show" link
    Then I should see "Add Comment"
    And I fill in "comment[commenter]" with "David Bowie"
    And I fill in "comment[email]" with "david@bowie.com"
    And I fill in "comment[body]" with "I don't know where I'm going from here, but I promise it won't be boring."
    And I click "Create Comment"
    Then I should see "Your comment has been posted!"
    And I should see "Commenter: David Bowie"
    And I should see "Comment: I don't know where I'm going from here, but I promise it won't be boring."