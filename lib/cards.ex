defmodule Cards do
  def create_deck do
    ["Ace", "four", "five"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end
end