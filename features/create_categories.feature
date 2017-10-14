Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Name"
    And I fill in "category_keywords" with "Keywords"
    And I fill in "category_permalink" with "Permalink"
    And I fill in "category_description" with "Description"
    And I press "Save"
    Then I should see "Name" 
    Then I should see "Keywords"
    Then I should see "Permalink"
    Then I should see "Description"
    Then I follow "Name"
    When I fill in "category_name" with "NameEdit"
    And I fill in "category_keywords" with "KeywordsEdit"
    And I fill in "category_permalink" with "PermalinkEdit"
    And I fill in "category_description" with "DescriptionEdit"
    And I press "Save"
    Then I should see "NameEdit" 
    Then I should see "KeywordsEdit"
    Then I should see "PermalinkEdit"
    Then I should see "DescriptionEdit"