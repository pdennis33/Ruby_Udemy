describe 'not_to method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq(10)
    expect([1, 2, 3]).not_to be([1, 2, 3])
    expect(0).not_to be_falsy
    expect([1, 2, 3]).not_to be_empty
    expect(nil).not_to be_truthy
    expect('Chicago').not_to start_with('car')
    expect(Array).not_to respond_to(:poop)
    expect([:a, :b, :c]).not_to include(:d)
    expect { 'Paul'.length }.not_to raise_error
  end
end