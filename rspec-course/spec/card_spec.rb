class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe Card do
  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end

  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end
end