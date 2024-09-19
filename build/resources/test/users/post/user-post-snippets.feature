@ignore
Feature: Reusable scenarios for post a user

  @create
  Scenario:
    Given url "https://reqres.in/api/users"
    And request {"name": "Fernando","job": "zion resident"}
    When method post
    Then status 201
    And ref contacId = $.id
