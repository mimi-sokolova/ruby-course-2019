Feature: Giving Defuse cards to each player
  and putting the rest in the deck

  Scenario : Giving each player Defuse card for a game of 2
    Given 2 players are playing Exploding Kittens
    When Defuse card is given to each of them
    And 2 Defuse cards are put in the deck
    And 2 Defuse cards are removed
    Then No defuse cards should left unused
    And Every player should have 1 Defuse card

  Scenario Outline : Giving each player Defuse card for a game of 3 to 5
    Given "<players_num>" players are playing Exploding Kittens
    When Defuse card is given to each of them
    And "<defuse_cards>" Defuse cards are put in the deck
    Then No defuse cards should left unused
    And Every player should have 1 Defuse card

    Examples:
      | players_num | defuse_cards|
      | 3           | 3          |
      | 4           | 2          |
      | 5           | 1          |

