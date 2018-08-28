defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "20 cards deck" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 20
  end

  test "Shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck != Cards.shuffle(deck)
    #refute deck != Cards.shuffle(deck)
  end


end
