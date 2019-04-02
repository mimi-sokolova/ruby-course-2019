Feature: Adding Exploding Kittens cards to the drawing deck

  Scenario Outline : Giving each player Defuse card for a game of 2 to 5
    Given "<players_num>" players are playing Exploding Kittens
    When Exploding Kittens "<exp_kitten>" cards are added in the deck
    Then Deck number of cards should be "<cards_in_deck>"

    Examples:
      | players_num |exp_kitten| cards_in_deck|
      | 2           | 1        |41          |
      | 3           | 2        |39          |
      | 4           | 3        |36          |
      | 5           | 4        |31          |
