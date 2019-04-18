Feature: Checking organisation public information without

  Scenario : Organisation has more then 3 members
    Given an organisation 'kiwitcms'
    When list of members requested
    Then number of members should be more than '3'


  Scenario: Organization kiwitcms has a member named asankov
    Given an organisation 'kiwitcms'
    When checked if 'asankov' is member
    Then organisation membership is 'true'

  Scenario: Organization kiwitcms has a member named kiwi-bot
    Given checked if 'kiwi-bot' is member of 'kiwitcms'
    Then organisation membership is 'true'

  Scenario: Repository kiwitcms/Kiwi has more than 100 stargazers
    Given a repository 'kiwitcms/Kiwi'
    When requested number of stargazers
    Then stargazers should be more than "100"

  Scenario: Repository kiwitcms/Kiwi has mimi-sokolova as stargazers
    Given a repository 'kiwitcms/Kiwi'
    When requested stargazers
    Then "mimi-sokolova" is a stargazers