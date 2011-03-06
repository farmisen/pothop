Feature: Admin partner account
  To be able to have partner putting deals on pothop
  As an admin
  I want to be able to manage partner accounts

  Background:
     Given the following cities exist:
      | name          |
      | Dallas        |
      | San Francisco |
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
    And I fill in 'jack' for 'First Name'
    And I fill in 'frost' for 'Last Name'
    And I fill in 'jack@example.com' for 'Email'
    And I fill in '123456' for 'Password'
    And I fill in '123456' for 'Password Confirmation'
    And I fill in 'The Green Door' for 'Business Name'
    And I select 'San Francisco' for 'Business City'
    And I press 'Create'
    Then 'Business Name' should contain 'The Green Door'
