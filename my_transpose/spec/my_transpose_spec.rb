require 'rspec'
require 'my_transpose'

describe "#my_transpose" do
  it 'covert row to column' do
    arr = [[0, 1, 2],[3, 4, 5],[6, 7, 8] ]
    expect(my_transpose(arr)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end
