Feature: Deals
  In order to propose deals to the users
  As an admin
  I want to be able to manage deals

  Background:
     Given the following cities exist:
      | name          |
      | Dallas        |
      | San Francisco |
    And the following user exists:
      | email            | password | first_name | last_name | role    | city          | business_name  |
      | bob@example.com  | 123456   | bob        | smith     | admin   | Dallas        | pothop         |
      | jack@example.com | 123456   | jack       | frost     | partner | San Francisco | The Green Door |


  @dev
  Scenario: deal creation
    Given I am logged in with the following values:
      | email           | password |
      | bob@example.com | 123456   |
    And I am on the manage deals page
    When I press 'Add a deal'
    And I fill in '$10 of deep dish pizza' for 'Title'
    And I fill in '5' for 'Price'
    And I fill in '10' for 'Value'
    And I fill in 'a nice deal' for 'Description'
    And I fill in 'no onions' for 'Fine Print'
    And I fill in 'San Francisco' for 'City'
    And I press 'Create'
    Then 'Title' should contain '$10 of deep dish pizza'
