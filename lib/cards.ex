defmodule Cards do
  def create_deck do
    values = ["Ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "Jack", "Queen", "King"]
    suits = ["Clubs", "Spades", "Hearts", "Diamonds"]

    deck = for value <- values do
      for suit <- suits do
        "#{value} of #{suit}"
      end
    end

    List.flatten(deck)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
