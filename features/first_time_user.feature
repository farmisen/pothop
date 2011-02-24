Feature: First time user
  In order to get deal near me
  As a guest
  I want to be able to enter some basic info

  Scenario: first time visit
    Given I visit the home page
    Then I should see 'Confirm your city:'
    And I should see a dropdown of cities

  Scenario: comfirm city
    Given I visit the home page
    When I select 'San Francisco' from 'cities'
    And I press 'continue'
    Then I should see 'Enter your email address:'

  Scenario: enter email address
    Given I visit the enter email address page
    When I fill in 'foobar@gmail.com' for 'email'
    And I press 'continue'
    Then I should see 'foobar@gmail.com'
