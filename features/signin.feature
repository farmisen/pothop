Feature: Sign in
  In order to access my priviledges
  As a registered user
  I want to be able to signin

  Scenario: User is signed in when they press Sign In
   Given I have an existing account with email "bob@example.com" and password "123456" and first_name "bob"
   And I am on the signin page
   When I fill in "Email" with "bob@example.com"
   And I fill in "Password" with "123456"
   And I press "Sign In"
   Then I should see "Welcome Bob"

