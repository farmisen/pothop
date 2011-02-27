Feature: Sign in
  In order to access my priviledges
  As a registered user
  I want to be able to signin

  Background:
     Given the following cities exist:
      | name          |
      | San Francisco |
    Given the following user exists:
      | email           | password | first_name | last_name | role | city          |
      | bob@example.com | 123456   | bob        | smith     | user | San Francisco |
    And the following deals exist:
       | title                            | price | value | description      | fine_print                | bought | total    | city          |
       | $200 for an ouncer of Jack Frost | 200   | 300   | a very good deal | the devil lays in details | 4      | 50       | San Francisco |

  @dev
  Scenario: User is signed in when he press Sign In
    And I am on the signin page
    When I fill in 'bob@example.com' for 'email'
    And I fill in '123456' for 'password'
    And I press 'Sign In'
    Then I should see 'Bob S.'
 
  Scenario: User is not signed in when he gives the wrong password and he press Sign In
    And I am on the signin page
    When I fill in 'bob@example.com' for 'email'
    And I fill in '123457' for 'password'
    And I press 'Sign In'
    Then I should not see 'Bob S.'
    And I should see 'Wrong password'


