Feature: Sign up
  To be able to have my info remembered by pothop
  As a unregistered user
  I want to be able to signup

  Background:
     Given the following cities exist:
      | name          |
      | San Francisco |
    Given the following user exists:
      | email           | password | first_name | last_name | role | city          |
      | bob@example.com | 123456   | bob        | smith     | user | San Francisco |

  @dev
  Scenario: new user sign up
    Given I am on the signup page
    When I fill in 'jack' for 'first_name'
    And I fill in 'frost' for 'last_name'
    And I fill in 'jack@example.com' for 'email'
    And I fill in '123456' for 'password'
    And I fill in '123456' for 'password_confirmation'
    And I check 'tos_aggreement'
    And I press 'Sign Up'
    Then I should see 'Jack F.'
