describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for presence of all elements' do
      expect(subject).to contain_exactly(2, 1, 3)
      expect(subject).not_to contain_exactly(2, 1, 3, 5)
    end
  end

  describe 'short syntax' do
    it { is_expected.to contain_exactly(1, 3, 2) }
  end
end