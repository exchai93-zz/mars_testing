require 'move'

describe 'Move' do

  describe 'Rover moves' do
    it 'returns "L"' do
      expect(Move.left).to eq 'L'
    end
    it 'returns "R"' do
      expect(Move.right).to eq 'R'
    end
    it 'returns "M"' do
      expect(Move.forward).to eq 'M'
    end
  end

end
