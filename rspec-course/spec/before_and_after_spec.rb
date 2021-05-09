RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end
  
  before(:example) do
    puts 'Before example'
  end

  after(:example) do
    puts 'After example'
  end

  it 'is just a random example' do
    puts 'In the exmaple'
    expect(5 * 4).to eq(20)
  end

  it 'is another random example' do
    puts 'In the exmaple'
    expect(3 - 2).to eq(1)
  end
end