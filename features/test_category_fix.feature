Feature: Test Category Create and Update
  As a blog administrator
  In order to categorize my blogs, I need to add support for categories
  I want to be able to view, edit and create categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario:
    Given I am on the category page
    When I fill in "category_name" with "test_category"
    And I fill in "category_keywords" with "test_category_keyword"
    And I fill in "category_permalink" with "test_link"
    And I fill in "category_description" with "test description"
    And I press "Save"
    Then I should see "test_category"
    And I should see "test_category_keyword"
    And I should see "test_link"
    And I should see "test description"
    And I should be on the category page

  Scenario:
    Given A test category is already created
    And I am on the category page
    When I follow "Edit"
    And I fill in "category_description" with "update test description"
    And I press "Save"
    And I should see "update test description"
    And I should be on the category page
