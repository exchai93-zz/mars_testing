require 'direction'

describe 'Direction' do

  subject(:direction) { Direction.new('N') }

  describe '#initialize' do
    it 'has an initial facing direction' do
      expect(direction.facing_direction).to eq 'N'
    end
  end

  context 'when given a move' do
    describe '#turn_left' do
      it 'returns the element at the current index -1' do
        expect(direction.turn_left).to eq 'W'
      end
    end
    describe '#turn_right' do
      it 'returns the element at the current index +1' do
        expect(direction.turn_right).to eq 'E'
      end
    end 
  end
end
