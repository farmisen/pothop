Feature: Admin partner account
  To be able to have partner putting deals on pothop
  As an admin
  I want to be able to manage partner accounts

  Background:
     Given the following cities exist:
      | name          |
      | Dallas        |
      | San Francisco |
    And the following users exist:
      | email            | password  | first_name  | last_name | role    | city   | business_name   |
      | bob@example.com  | 123456    | bob         | smith     | admin   | Dallas | pothop          |
      | john@example.com | 123456    | john        | smith     | partner | Dallas | The Purple Door |
      | bill@example.com | 123456    | bill        | smith     | partner | Dallas | The Blue Door   |
      | dick@example.com | 123456    | dick        | smith     | partner | Dallas | The Red Door    |


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
    And I select 'San Francisco' for 'City'
    And I press 'Create'
    Then 'Business Name' should contain 'The Green Door'


  @dev
  Scenario: I can see a list of parners
    Given I am logged in with the following values:
      | email           | password |
      | bob@example.com | 123456   |
    And I am on the manage partner accounts page
    Then I can see 3 partners
