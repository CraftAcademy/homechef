Feature: Main landing page
  As a visitor
  In order to get an overview over the service
  I need to see a main landing page

  Scenario: Visitor visits main page
    When I visit the main landing page
    Then I should see "Welcome to HomeChef"
    And I should see input of type text