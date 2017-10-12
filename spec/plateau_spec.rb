require 'plateau'

describe 'Plateau' do

  subject(:plateau) { Plateau.new(1,1) }

  describe '#initialize' do
    it 'has a width' do
      expect(plateau.width).to eq 1
    end
    it 'has a height' do
      expect(plateau.height).to eq 1
    end
    it 'stores an empty array of rovers' do
      expect(plateau.rovers).to eq []
    end
  end

  context 'plateau operations' do
    let(:rover) { Rover.new(1,1, 'N', 'LMLMLMLMM') }
    let(:duplicate_rover) { Rover.new(1,1, 'N', 'LMLMLMLMM') }
    let(:other_rover) { Rover.new(2,2, 'S', 'MMMMLM') }

    describe '#land_rover' do
      before(:each) do
        plateau.land_rover(rover)
      end
      it 'lands one rover' do
        expect(plateau.rovers.length).to eq 1
      end
      it 'lands another rover' do
        plateau.land_rover(other_rover)
        expect(plateau.rovers.length).to eq 2
      end
      context 'landing a rover with the same position and direction' do
        it 'raises an error' do
          expect{ plateau.land_rover(duplicate_rover) }.to raise_error(DuplicateRoverError)
        end
      end
    end
  end

  #   describe '#start_rover' do
  #     it 'returns the final position' do
  # end

end
