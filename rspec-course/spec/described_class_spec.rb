class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject(:paul) { described_class.new('Paul') }
  let(:boris) { described_class.new('Boris') }

  it 'stores the name properly' do
    expect(paul.name).to eq('Paul')
    expect(boris.name).to eq('Boris')
  end
end