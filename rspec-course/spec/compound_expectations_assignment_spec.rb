describe 'assignment' do
  it 'starts with fire and ends with truck' do
    expect('firetruck').to start_with('fire').and end_with('truck')
  end

  it 'is even and responds to the times method' do
    expect(20).to be_even.and respond_to(:times)
  end

  it 'checks for inclusions' do
    expect([4, 8, 15, 16, 23, 42]).to include(42).and start_with(4, 8, 15)
  end
end