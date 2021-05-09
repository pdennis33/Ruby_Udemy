RSpec.describe Array do
  it 'starts as an empty Array' do
    expect(subject.length).to eq(0)
    subject.push('test')
    expect(subject.length).to eq(1)
  end
end