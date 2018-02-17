defmodule Cards do
  # creates a new deck of cards
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five", "Six", 
    "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  # shuffles the deck
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  # returns true if deck contains card
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  # distributes hand_size number of decks given a deck
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end