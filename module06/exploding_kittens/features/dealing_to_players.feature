Feature: Dealing cards to players

  Scenario Outline: Dealing for a game  with 2 to 5 players
    Given "<players_num>" players want to play Exploding Kittens
    When player deals the cards from the deck
    Then 2 players have 4 cards each
    And Deck has "<cards_left>" cards left

    Examples:
      | players_num | cards_left  |
      | 2           | 38          |
      | 3           | 34          |
      | 4           | 30          |
      | 5           | 26          |


  Scenario : Dealing for a game with six players
    Given 6 players want to play Exploding Kittens
    When player starts dealing
    Then Error is returned "The maximum number of players is 5! Remove one player"


  Scenario : Dealing for a game with one players
    Given 1 players want to play Exploding Kittens
    When player starts dealing
    Then Error is returned "The minimum number of players is 2! Find a friend"

