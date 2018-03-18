class World
  def initialize(x: 5, y: 5)
    validate_x_and_y(x, y)
    @x, @y = x, y
  end

  attr_reader :x, :y

  private

  def validate_x_and_y(x, y)
    raise 'OutOfBoundsError' if x < 5 || y < 5
    raise 'OutOfBoundsError' if x > 20 || y > 20
  end
end
