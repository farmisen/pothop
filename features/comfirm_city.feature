Feature: Comfirm city
  In order to get deal near me
  As a guest
  I want to be able to comfirm my city

  Scenario: first time visit
    Given I visit the home page
    Then I should see a dropdown of cities
