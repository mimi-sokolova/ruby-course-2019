Feature: Dealing cards to players

  Scenario : Dealing for a game with two players
    Given 2 players want to play Exp.Kittens
    When player deals the cards from the deck
    Then 2 players have 4 cards each
    And Deck has 38 cards left

  Scenario : Dealing for a game with thre players
    Given 3 players want to play Exp.Kittens
    When player deals the cards from the deck
    Then 3 players have 4 cards each
    And Deck has 34 cards left

  Scenario : Dealing for a game with thre players
    Given 3 players want to play Exp.Kittens
    When player deals the cards from the deck
    Then 3 players have 4 cards each
    And Deck has 34 cards left

  Scenario : Dealing for a game with thre players
    Given 3 players want to play Exp.Kittens
    When player deals the cards from the deck
    Then 3 players have 4 cards each
    And Deck has 34 cards left

  Scenario : Dealing for a game with six players
    Given 3 players want to play Exp.Kittens
    When player deals the cards from the deck
    Then Error is returned "The maximum number of players is 5! Remove one player"


  Scenario : Dealing for a game with one players
    Given 3 players want to play Exp.Kittens
    When player deals the cards from the deck
    Then Error is returned "The minimum number of players is 2! Find a friend"

