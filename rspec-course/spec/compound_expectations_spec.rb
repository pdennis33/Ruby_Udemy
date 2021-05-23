describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd && be > 20
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to (be > 20).and be_odd }
end

describe 'caterpillar' do
  it { is_expected.to start_with('cat').and end_with('pillar') }
end

describe [:usa, :canada, :mexico] do
  subject { described_class.sample }

  it { is_expected.to eq(:usa).or eq(:canada).or eq(:mexico) }
end