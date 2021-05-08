class Card
  attr_accessor :suit, :rank

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end