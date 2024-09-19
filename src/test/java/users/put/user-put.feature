Feature: Put user on regres

  Scenario: Put a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    And reques {"name": "Ramiro","job": "zion resident"}
    When method put
    Then status 200
    And match $.name == 'Ramiro'