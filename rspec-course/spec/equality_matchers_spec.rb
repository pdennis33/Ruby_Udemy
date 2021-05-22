describe 'equality mathers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ingnores type' do
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests value AND type' do
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'is not equal' do
      expect(c).not_to be(d)
    end

    it 'should be equal' do
      expect(e).to be(c)
    end
  end

end