require_relative 'card'

class Deck
  
  attr_accessor :deck

  def initialize
    @deck = []
    populate
  end

  def populate
    numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
    suits = [:club, :spade, :heart, :diamond]

    numbers.each do |num|
      suits.each do |suit|
        @deck << Card.new(suit, num)
      end
    end

    @deck.shuffle!
  end

end
