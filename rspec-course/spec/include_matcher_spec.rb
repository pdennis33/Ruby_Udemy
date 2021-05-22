describe 'include matcher' do
  describe 'hot chocolate' do
    it { is_expected.to include('hot') }
    it { is_expected.to include('choc') }
    it { is_expected.to include('late') }
  end

  describe [10, 20, 30] do
    it { is_expected.to include(10, 30) }
  end

  describe ({a: 2, b: 4}) do
    it { is_expected.to include(:a) }
    it { is_expected.to include(b: 4) }
  end
end