Feature: Sign in
  In order to access my priviledges
  As a registered user
  I want to be able to signin

  Scenario Outline: User is signed in when they press Sign In
    Given I have an existing account with email "<email>" and password "<password>" and first_name "<first_name>" and role "<role>"
    And I am on the signin page
    When I fill in '<email>' for 'email'
    And I fill in '<password>' for 'password'
    And I press 'Sign In'
    Then I should see 'Welcome Bob'
  Examples:
    | email           | password | first_name | role |
    | bob@example.com | 123456   | bob        | user |

