Feature: Is it Friday yet?
  everybody want to know when its Friday

    Given today is "<day>"
    When I ask whether it's Friday yet
    Then I should be told "<answer>"


    Examples:
      | day | answer |
      | Friday | TGIF |
      | Sunday | Nope |
      | anything else! | Nope |