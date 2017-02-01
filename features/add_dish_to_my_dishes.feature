Feature: Manage dishes on offer
  As a selling User,
  In order make my dishes available for purchase
  I would like to add dishes

  Background:
    Given that there is a user with email: "email@random.com"

  Scenario:
    When I am on the "My Dishes" page
    And I fill in "Dish name" with "Meatballs"
    And I fill in "Dish description" with "This are like your Swedish mom's homemade meatballs"
    And I fill in "Price" with "59.99"
    And I fill in "Portions" with "5"
    And I fill in "Pickup time" with "18:00"
    And I upload an image called "meatballs.jpg"
    Then there should be a dish called "Meatballs"

