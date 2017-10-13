require 'rover'

describe 'Rover' do

  subject(:rover) { Rover.new(1, 2, 'N', 'LMLMLMLMM') }
  let(:other_rover) { Rover.new(3, 3, 'E', 'MMRMMRMRRM') }

  describe '#initialize' do
    context 'position' do
      it 'has a x coordinate' do
        expect(rover.x).to eq 1
      end
      it 'has a y coordinate' do
        expect(rover.y).to eq 2
      end
    end
    context 'direction' do
      it 'has an initial facing direction' do
        expect(rover.direction.facing_direction).to eq 'N'
      end
    end
    context 'instructions' do
      it 'has a series of instructions' do
        expect(rover.instructions.rover_moves).to eq ["L", "M", "L", "M", "L", "M", "L", "M", "M"]
      end
    end
  end

  describe '#make_a_move' do
    context 'with a valid instruction input' do
      before(:each) do
        rover.make_a_move
      end
      it 'changes the rovers direction' do
        expect(rover.direction.facing_direction).to eq 'N'
      end
      it 'moves the rover to the end x position' do
        expect(rover.x).to eq(1)
      end
      it 'moves the rover to the end y position' do
        expect(rover.y).to eq(3)
      end
      context 'with another valid instruction input' do
        before(:each) do
          other_rover.make_a_move
        end
        it 'does not change the rovers direction' do
          expect(other_rover.direction.facing_direction).to eq 'E'
        end
      end
    end

    context 'error handling' do
      let(:invalid_rover) { Rover.new(1, 2, 'N', 'PPNNNP') }
      let(:rover) { Rover.new(0,0,'S', 'MMMMM') }

      describe 'with an invalid instruction input' do
        it 'should raise an error' do
          expect{ invalid_rover.make_a_move }.to raise_error(InvalidMove)
        end
      end
      describe 'when the x and y coordinates are negative' do
        it 'should raise an error' do
          expect{ rover.make_a_move }.to raise_error(OffThePlateauError)
        end
      end
    end
  end

  describe '#to_position_format' do
    it 'returns the rovers position and direction in correct format' do
      expect(rover.to_position_format).to eq '1 2 N'
    end
  end

end
