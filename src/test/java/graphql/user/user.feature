Feature: Test graphql

Background:
* url 'http://localhost:4000/'

Scenario Outline: get account by id
# note the 'text' keyword instead of 'def'
* text query =
"""
{
  user(id: "<id>") {
    id
    name
  }
}
"""
Given path 'graphql'
And request { query: '#(query)' }
When method post
Then status 200

  Examples:
  | id |
  | a  |
  | b  |

