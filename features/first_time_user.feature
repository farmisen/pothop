Feature: First time user
  In order to get deal near me
  As a guest
  I want to be able to enter some basic info

  Scenario: first time visit
    Given I visit the home page
    Then I should see a dropdown of cities

  Scenario: comfirm city
    Given I visit the home page
    When I select 'San Francisco' from 'cities'
    And I press 'Confirm'
    Then I should see 'Enter your email'
