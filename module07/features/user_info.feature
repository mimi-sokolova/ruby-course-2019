Feature: Checking user public information without authentication

  Scenario Outline: Check user hireability
    Given user '<username>'
    When get user info
    Then hireability status should be '<hireability_status>'

    Examples:
      | username | hireability_status  |
      | atodorov | true           |
      | apetkova | false          |


  Scenario:
    Given user 'atodorov'
    When get user info
    Then living location should be 'Sofia'

  Scenario:
    Given user 'atodorov'
    When get user organisations
    Then users is member of 'weldr' organisation

