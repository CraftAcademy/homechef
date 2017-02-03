Feature: Manage dishes on offer
  As a selling User,
  In order make my dishes available for purchase
  I would like to add dishes

  Background:
    Given that there is a user logged in with an email of "email@random.com"

  Scenario:
    When I am on the "Add dish to my dishes" page
    And I fill in "Dish name" with "Meatballs"
    And I fill in "Dish description" with "This are like your Swedish mom's homemade meatballs"
    And I fill in "Price" with "59.99"
    And I fill in "Nr of portions available" with "5"
    And I fill in "Earliest pickup time" with "18:00"
    And I click "Create dish"
    Then I should see "Meatballs successfully added to your dishes"