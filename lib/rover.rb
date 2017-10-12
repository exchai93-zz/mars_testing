require_relative 'direction'
require_relative 'instructions_parser'
require_relative 'move'
require_relative 'invalid_move_error'
require_relative 'off_the_plateau_error'
require 'pry'
require 'byebug'

class Rover

  attr_reader :x, :y, :direction, :instructions
  # Initializes with x,y position, facing direction and string of instructions
  def initialize(x, y, direction, instructions)
    @x = x
    @y = y
    @direction = Direction.new(direction)
    @instructions = instructions
  end
  # Processes the string of instructions to move the rover according to each different move
  # Currently only processes the first move - one move at a time
  def make_a_move
    parsed_instructions = @instructions.split(//)
    parsed_instructions.each do |instruction|
      case instruction
      when Move.left
        return @direction.turn_left
      when Move.right
        return @direction.turn_right
      when Move.forward
        move_forward
        raise OffThePlateauError if off_the_plateau?
      else
        raise InvalidMove
      end
    end
  end

  # Convert the rover location in the correct format for output
  def to_position_format
    "#{self.x} #{self.y} #{self.direction.facing_direction}"
  end

  # Move 'M' moves forward one grid point
  def move_forward
    case @direction.facing_direction
      when 'N'
        @y += 1
      when 'E'
        # byebug
        @x += 1
      when 'S'
        @y -= 1
      when 'W'
        @x -= 1
    end
  end

  private

  def off_the_plateau?
    @y < -1 || @x < -1
  end
  # Move 'L' changes the facing direction 90° anticlockwise
  def turn_left
    return @direction.turn_left
  end
  # Move 'R' changes the facing direction 90° clockwise
  def turn_right
    return @direction.turn_right
  end

end
