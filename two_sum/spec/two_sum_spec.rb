require 'rspec'
require  'two_sum'

describe '#two_sum' do
  it 'return pairs sum to zero' do
    arr = [-1, 0, 2, -2, 1]
    expect(two_sum(arr)).to eq([[0, 4], [2,3]])
  end
end
