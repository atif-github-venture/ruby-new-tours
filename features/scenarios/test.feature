@new_tours
Feature: Mercury tours website

  Background:
    Given Navigate to the mercury tours webpage

  Scenario: Verify the functionality of the flight finder page
    When Login as an authorized user
    And Verify landed on Flight Finder Page
    And Enter flight details in flight Flight Finder page
    And Verify landed on Select Flight Page
    And Select the flights on Select Flight page
    And Verify landed on Book Flight Page
    Then Book the flights on Book Flight page
    And Log out of the application