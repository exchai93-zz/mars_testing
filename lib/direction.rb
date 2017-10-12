class Direction
    # Cardinal direction points
    DIRECTION = [ 'N', 'E', 'S', 'W']

    attr_reader :facing_direction
    # Initializes with a current facing direction
    def initialize(facing_direction)
      @facing_direction = facing_direction
    end

    def turn_left
      @facing_direction = DIRECTION.fetch(index - 1)
    end

    def turn_right
      @facing_direction = DIRECTION.fetch((index + 1) % DIRECTION.length)
    end

    private

    def index
      DIRECTION.index(@facing_direction)
    end

end
