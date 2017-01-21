defmodule Cards do
  def create_deck do
    numbers = ["Ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "Jack", "Queen", "King"]
    suits = ["Clubs", "Spades", "Hearts", "Diamonds"]

    deck = for number <- numbers do
      for suit <- suits do
        "#{number} of #{suit}"
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
