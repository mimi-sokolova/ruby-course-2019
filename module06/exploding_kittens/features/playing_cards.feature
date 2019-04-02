Feature: As a player I want to play a card from my deck

  Scenario : Play successfully card
    Given its player A turn
    And player has cards in their hand
    When A random card is played from their hand
    Then This card is removed from players hand

Feature: As a Player I want to play See the Future card to
  see the first three cards in the deck and plan my next moves

  Scenario : Play successfully card
    Given its player A turn
    And player has cards in their hand
    When A random card is played from their hand
    Then This card is removed from players hand

Feature: As a Player I want to play Favour card to take a card
  from one players

