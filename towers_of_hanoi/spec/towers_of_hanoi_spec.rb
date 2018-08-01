
require 'rspec'
require 'towers_of_hanoi'

describe Towers_of_hanoi do
  subject(:tower) { Towers_of_hanoi.new }

  describe '#initialize' do
    it 'should initialize with three towers' do
      expect(tower.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe '#make_move' do
    it 'should move piece from one tower to another tower' do
      tower.make_move(0, 2)
      expect(tower.towers).to eq([[3,2], [], [1]])
    end
  end

  describe '#valid_move?' do
    it 'should raise error if from piece is larger than to piece' do
      tower.make_move(0, 2)
      expect { (tower.valid_move?(0, 2)) }.to raise_error(ArgumentError)
    end

    it 'should raise_error if from_tower is empty' do
      expect { (tower.valid_move?(2, 0)) }.to raise_error(ArgumentError)
    end
  end

  describe '#won?' do
    it 'should return true when game is over ' do
      tower.towers = [[], [3, 2, 1], []]
      expect(tower.won?).to be(true)
    end
  end


end
