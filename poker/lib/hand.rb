require_relative 'deck'

class Hand
  attr_reader :cards, :deck
  def initialize(deck)
    @cards = []
    @deck = deck.deck

  end

  def populate_hand
    until cards.length == 5
      cards << @deck.pop
    end
  end

end
