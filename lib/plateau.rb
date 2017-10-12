require_relative 'rover'
require_relative 'duplicate_rover_error'


class Plateau

  attr_reader :width, :height, :rovers
  # Initializes the size of the plateau and lands rovers
  def initialize(width, height)
    @width = width
    @height = height
    @rovers = []
  end
  # Lands valid rovers onto the plateau
  def land_rover(new_rover)
    @rovers.each do |rover|
      raise DuplicateRoverError if (new_rover.x == rover.x) && (new_rover.y == rover.y)
    end
    @rovers << new_rover
  end

end
