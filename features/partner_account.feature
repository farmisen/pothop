Feature: Admin partner account
  To be able to have partner putting deals on pothop
  As an admin
  I want to be able to manage partner accounts

  Background:
     Given the following cities exist:
      | name   |
      | Dallas |
    And the following user exists:
      | email           | password | first_name | last_name | role  | city   |
      | bob@example.com | 123456   | bob        | smith     | admin | Dallas |


  @dev
  Scenario: partner account creation
    Given I am logged in with the following values:
      | email           | password |
      | bob@example.com | 123456   |
    And I am on the manage partner accounts page
    When I press 'Add a partner account'
    And I fill in 'jack' for 'first_name'
    And I fill in 'frost' for 'last_name'
    And I fill in 'jack@example.com' for 'email'
    And I fill in '123456' for 'password'
    And I fill in '123456' for 'password_confirmation'
    And I fill in 'The Green Door' for 'business_name'
    And I have selected 'San Francisco' for city
    And I press 'Create'
    Then I should see 'The Green Door'
