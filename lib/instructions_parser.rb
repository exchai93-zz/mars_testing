class InstructionsParser

  attr_reader :rover_moves

  def initialize(instructions)
    @rover_moves = []
    parse_instructions(instructions)
  end

  def parse_instructions(instructions)
    moves = instructions.split(//)
    moves.each do |move|
      @rover_moves.push(move)
    end
  end

end
