require 'rspec'
require 'stock_picker'

describe '#stock_picker' do
  it 'should return most profitable pair of days' do
    array = [4, 9, 8, 2, 5, 7, 11, 1, 6]
    expect(stock_picker(array)).to eq([7, 8])
  end
end
