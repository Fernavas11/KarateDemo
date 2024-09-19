Feature: Delete user on regres

  Scenario: Delete a user
    * call read("../post/user-post-snippets.feature@create")
    Given url "https://reqres.in/api/users/" + contacId
    When method delete
    Then status 204