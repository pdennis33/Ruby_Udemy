RSpec.describe Array do
  subject(:sally) { [1, 2] }

  it 'has a length of two' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'still has a length of two' do
    expect(sally.length).to eq(2)
  end
end