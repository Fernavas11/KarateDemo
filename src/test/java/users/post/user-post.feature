Feature: Post user on regres

  Background:
    * url "https://reqres.in"
    * path "/api/users"
    * request { "name": "#(name)","job": "#(job)"}


  Scenario Outline: Post a user
    When method post
    Then status 201

    Examples:
      | name    | job     |
      | Juan    | Leader  |
      | Carlos  | doctor  |
      | Gustavo | teacher |


  Scenario: Post a user
    * def vari = { "name": "Juan","job": "pilot"}
    Given request vari
    When method post
    Then status 201


  Scenario: Post a user without job
    Given request { "name": "Juan"}
    When method post
    Then status 201

  Scenario: Post a user with name invalid
    Given request { "name": "%%$%%$","job": "pilot"}
    When method post
    Then status 201