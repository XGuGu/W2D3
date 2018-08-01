require 'rspec'
require 'hand'

describe Hand do
  subject(:hand) { Hand.new(Deck.new) }
  describe '#initialize' do
    it 'should initialize with array of cards' do
      expect(hand.cards).to be_kind_of(Array)
    end

    it "should keep track of which player's hand" do
      expect(hand.player).to eq(player.name)
    end
  end

  describe '#populate_hand' do
    it 'should deal 5 cards'do
      hand.populate_hand
      expect(hand.cards.length).to eq(5)
    end

    it 'should take cards from the deck' do
      hand.populate_hand
      expect(hand.deck.length).to eq(47)
    end
  end
end
