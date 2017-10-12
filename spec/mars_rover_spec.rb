require 'mars_rover'

describe 'MarsRover' do

  subject(:mars) { MarsRover.new('test_input.txt') }

  describe '#initialize' do
    context 'with a valid input' do
      it 'contains a file with instructions' do
        expect(mars.file).to be_instance_of(Array)
      end
    end
  end

  context 'given a valid test input' do
    before(:each) do
      mars.parse_input
    end

    describe '#parse_input' do
      context 'plateau properties' do
        it 'has a plateau' do
          expect(mars.plateau).to be_instance_of(Plateau)
        end
        it 'returns the plateau width' do
          expect(mars.plateau.width).to eq('5')
        end
        it 'returns the plateau height' do
          expect(mars.plateau.height).to eq('5')
        end
      end
      context 'rover properties' do
        it 'initializes rovers and stores them in array format' do
          expect(mars.plateau.rovers).to be_instance_of(Array)
        end
        it 'initializes the corret number of rovers' do
          expect(mars.plateau.rovers.length).to eq(2)
        end
        it 'has the correct x position' do
          expect(mars.plateau.rovers.first.x).to eq('1')
        end
        it 'has the correct y position' do
          expect(mars.plateau.rovers.first.y).to eq('2')
        end
      end
    end

    xdescribe '#move_rovers' do
      before(:each) do
        mars.move_rovers
      end
      it 'moves the rovers to the correct position' do
        expect(mars.rovers.first.x).to eq(1)
        # expect(mars.rovers.first.y).to eq(3)
        # expect(mars.rovers.first.direction.facing_direction).to eq('N')
      end
    end
  end


end
