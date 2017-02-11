defmodule Cards do
  @moduledoc """
    Create and handle a deck of cards
  """

  def create_deck do
    values = ["Ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "Jack", "Queen", "King"]
    suits = ["Clubs", "Spades", "Hearts", "Diamonds"]

    deck = for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

    List.flatten(deck)
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "That file doesn't exist" #underscore indicates we acknowledge the need for it but we don't want to use it
    end
  end

  def deal(deck, hand_size) do
    # returns a tuple
    Enum.split(deck, hand_size)
  end

  #creates a deck, shuffles them, and deals them out
  #Use pipes to call multiple methods
  #The pipe operator requires that you chain methods that have consistent first arguments
  def create_hand(hand_size) do
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)
  end
end
