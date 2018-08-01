require 'rspec'
require 'card'

describe Card do
subject (:card) { Card.new(:club, :A) }

  describe "#initialize" do
    it 'should create a new card' do
      expect(card).to be_kind_of(Card)
    end

    it 'should contain value' do
      expect(card.value).to eq(1)
    end

    it 'should contain symbol' do
      expect(card.symbol).to eq(:A)
    end
  end
end
