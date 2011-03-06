Feature: Deal page
  In order to save money
  As a user
  I want to be able to see my daily deal

  Background:
    Given the following cities exist:
      | name          |
      | Chicago       |
      | Dallas        |
      | San Francisco |
      | Reno          |
    And the following user exists:
      | email           | password | first_name | last_name | role | city          |
      | bob@example.com | 123456   | bob        | smith     | user | Dallas |
    And the following deals exist:
      | title                            | price | value | description      | fine_print                | bought | total    | city          |
      | $10 of deep dish pizza           | 5     | 10    | a nice deal      | no onions                 | 27     | 500      | Chicago       |
      | $75 for a Mobile Hand Wash       | 75    | 175   | a spotless car   | Expires Aug 29, 2011      | 15     | 150      | Dallas        |
      | $200 for an ouncer of Jack Frost | 200   | 300   | a very good deal | the devil lays in details | 4      | 50       | San Francisco |

  Scenario: Guest select a city and see a deal for this city
    Given I am on the deal page
    And I have selected 'San Francisco' for city
    Then I should see '$200 for an ouncer of Jack Frost'
    And I should see 'Price: $200'
    And I should see 'Value: $300'
    And I should see 'You save: $100'
    And I should see 'Discount: 33%'
    And I should see 'a very good deal'
    And I should see 'The Fine Print: the devil lays in details'
    And I should see '4 bought'
    And I should see 'Total: 50'

  Scenario: User see a deal for his city
    Given I am logged in with the following values:
      | email           | password |
      | bob@example.com | 123456   |
    And I am on the deal page
    Then I should see '$75 for a Mobile Hand Wash'
    And I should see 'Price: $75'
    And I should see 'Value: $175'
    And I should see 'You save: $100'
    And I should see 'Discount: 57%'
    And I should see 'a spotless car'
    And I should see 'The Fine Print: Expires Aug 29, 2011'
    And I should see '15 bought'
    And I should see 'Total: 150'

  Scenario: User select a city and see a deal for this city
    Given I am logged in with the following values:
      | email           | password |
      | bob@example.com | 123456   |
    And I am on the deal page
    And I have selected 'San Francisco' for city
    Then I should see '$200 for an ouncer of Jack Frost'
    And I should see 'Price: $200'
    And I should see 'Value: $300'
    And I should see 'You save: $100'
    And I should see 'Discount: 33%'
    And I should see 'a very good deal'
    And I should see 'The Fine Print: the devil lays in details'
    And I should see '4 bought'
    And I should see 'Total: 50'


  Scenario: User has his city selected
    Given I am logged in with the following values:
      | email           | password |
      | bob@example.com | 123456   |
    And I am on the deal page
    Then I should see 'Dallas' selected for city

