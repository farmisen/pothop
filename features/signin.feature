Feature: Sign in
  In order to access my priviledges
  As a registered user
  I want to be able to signin

  Scenario: User is signed in when they press Sign In
    Given I have an existing account with email "bob@example.com" and password "123456" and first_name "bob" and last_name "smith" and role "user"
    And I am on the signin page
    When I fill in 'bob@example.com' for 'email'
    And I fill in '123456' for 'password'
    And I press 'Sign In'
    Then I should see 'Bob S.'
 
#  Scenario Outline: User is signed in when they press Sign In
#    Given I have an existing account with email "<email>" and password "<password_01>" and first_name "<first_name>" and role "<role>"
#    And I am on the signin page
#    When I fill in '<email>' for 'email'
#    And I fill in '<password_02>' for 'password'
#    And I press 'Sign In'
#    Then I should see '<message>'
#  Examples:
#    | email            | password_01 | password_02  |first_name | role | message                                               |
#    | bob@example.com  | 123456      | 123456       |  bob      | user | Welcome Bob                                           |
#    | john@example.com | 123456      | 123457       |  john     | user | Incorrect password. Try again or reset your password. |

