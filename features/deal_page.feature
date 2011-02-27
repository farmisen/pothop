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
      | bob@example.com | 123456   | bob        | smith     | user | San Francisco |
    And the following deals exist:
      | title                            | price | value | description      | fine_print                | bought | total    | city          |
      | $10 of deep dish pizza           | 5     | 10    | a nice deal      | no onions                 | 27     | 500      | Chicago       |
      | $200 for an ouncer of Jack Frost | 200   | 300   | a very good deal | the devil lays in details | 4      | 50       | San Francisco |

  Scenario: Guest see a deal
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

