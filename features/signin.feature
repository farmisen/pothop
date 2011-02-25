Feature: Sign in
  In order to access my priviledges
  As a registered user
  I want to be able to signin

  Background:
    Given An existing account with email "bob@example.com" and password "123456" and first_name "bob" and last_name "smith" and role "user"

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


