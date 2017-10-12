require 'instructions_parser'

describe 'InstructionsParser' do

  subject(:parser) { InstructionsParser.new("LMLMLMLMM") }

  describe '#initialize' do
    it 'should return an array of rover moves' do
      expect(parser.rover_moves).to eq ["L", "M", "L", "M", "L", "M", "L", "M", "M"]
    end
  end

  describe '#parse_instructions' do
    it 'splits the string into an array of moves' do
      instructions = "LMLMLMLMM"
      expect(parser.parse_instructions(instructions)).to eq ["L", "M", "L", "M", "L", "M", "L", "M", "M"]
    end
  end

end
