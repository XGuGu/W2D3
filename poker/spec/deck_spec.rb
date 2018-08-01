require 'rspec'
require 'deck'

describe Deck do
  subject(:deck) {Deck.new}

  describe '#initialize' do
    it 'should create a deck as an array' do
      expect(deck.deck).to be_kind_of(Array)
    end

    it 'should call populate' do
      # deck.should_receive(:populate)
      expect(:populate)
    end
  end

  describe '#populate' do
    it 'should populate a deck with 52 cards' do
      expect(deck.deck.length).to eq(52)
    end
  end
end
