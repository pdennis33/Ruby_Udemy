class Card
  attr_reader :suit, :rank

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end
end

RSpec.describe Card do
  def card
    Card.new('Ace', 'Spades')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end
end