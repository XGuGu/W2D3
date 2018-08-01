require 'rspec'
require 'remove_dups'

describe '#remove_dups' do
  it 'should remove dups in array' do
    array = [1,2,1,3,3]
    expect(remove_dups(array)).to eq([1,2,3])
    # array.remove_dups
  end
end
