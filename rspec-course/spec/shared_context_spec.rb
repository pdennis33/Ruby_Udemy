RSpec.shared_context 'common' do
  before do
    @foods = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  context 'calling the method' do
    it 'returns 5' do
      expect(some_helper_method).to eq(5)
    end
  end

  context 'manipulating the array' do
    it 'starts as an empty array' do
      expect(@foods.length).to eq(0)
    end

    it 'can be mutated' do
      @foods << "Bread" << "Milk"
      expect(@foods.length).to eq(2)
    end

    it 'should NOT still be mutated' do
      expect(@foods.length).to eq(0)
    end
  end 

  context 'working with some_variable' do
    it 'starts with length of 3' do
      expect(some_variable.length).to eq(3)
    end

    it 'can be mutated' do
      some_variable << 4 << 5
      expect(some_variable.length).to eq(5)
    end

    it 'should NOT still be mutated' do
      expect(some_variable.length).to eq(3)
    end
  end 
end

RSpec.describe 'second example in different file' do
  include_context 'common'

  it 'can use shared let vars' do
    expect(some_variable).to eq([1, 2, 3])
  end
end