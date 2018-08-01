class Card
  attr_reader :suit, :symbol, :value
  SUIT = [:club, :spade, :diamond, :heart]
  VALUE = {A: 1, J: 11, Q: 12, K: 13 }

  def initialize(suit, symbol)
    @suit = suit
    @symbol = symbol
    @value = pass_value(symbol)
  end

  def pass_value(symbol)
    if symbol.is_a?(Integer)
      symbol
    else
      VALUE[symbol]
    end
  end

end
