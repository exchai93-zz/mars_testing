require_relative 'plateau'

class MarsRover

  attr_reader :file, :plateau

  def initialize(file)
    @file = IO.readlines(file)
  end

  def parse_input
    @plateau = set_plateau(get_file_line)
    until @file.empty?
      x, y, direction = get_file_line.split
      instructions = get_file_line
      initialize_rover(x, y, direction, instructions)
    end
  end

  def move_rovers
    @plateau.rovers.each do |rover|
      rover.make_a_move
    end
  end

  def print_output
    @plateau.rovers.each { |rover| puts rover.to_position_format }
  end

  private

  def land_rovers
    @plateau.land_rover
  end

  def set_plateau(line)
    width, height = line.split
    Plateau.new(width, height)
  end

  def get_file_line
    @file.shift.strip
  end

  def initialize_rover(x, y, direction, instructions)
    @plateau.rovers << Rover.new(x, y, direction, instructions)
  end


end
