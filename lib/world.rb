class World

  MIN_X = 5
  MAX_X = 20
  MIN_Y = 5
  MAX_Y = 20

  def initialize(x: 5, y: 5)
    raise 'OutOfBoundsError' unless x_and_y_inbounds?(x, y)
    @x, @y = x, y
  end

  attr_reader :x, :y

  private

  def x_and_y_inbounds?(x, y)
    x_inbounds?(x) && y_inbounds?(y)
  end

  def x_inbounds?(x)
    x >= MIN_X && x <= MAX_X
  end

  def y_inbounds?(y)
    y >= MIN_Y && y <= MAX_Y
  end
end
