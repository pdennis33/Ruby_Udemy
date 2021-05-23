class HotChocolate
  def drink
    'Delicious'
  end

  def discard
    'PLOP!'
  end

  def purchase(num)
    "Just purchased #{num} drinks!"
  end
end

class Coffee
  def drink
    "Feeling that energy!"
  end
  def discard; end
  def purchase(num); end
end

describe HotChocolate do
  it 'can respond to certain methods' do
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'checks number of args' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end

  it { is_expected.to respond_to(:drink) }
end

describe Coffee do
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
