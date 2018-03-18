require 'cell'

class God
  ALIVE_NEXT_STATE = {
    0 => 'dead',
    1 => 'dead',
    2 => 'alive',
    3 => 'alive',
    4 => 'dead',
    5 => 'dead',
    6 => 'dead',
    7 => 'dead',
    8 => 'dead'
  }.freeze

  DEAD_NEXT_STATE = {
    0 => 'dead',
    1 => 'dead',
    2 => 'dead',
    3 => 'alive',
    4 => 'dead',
    5 => 'dead',
    6 => 'dead',
    7 => 'dead',
    8 => 'dead'
  }.freeze

  def self.live_or_die(cell, neighbours)
    alive_neighbours = self.calculate_alive_neighbours(neighbours)

    return ALIVE_STATE[alive_neighbours] if cell.alive?

    return DEAD_STATE[alive_neighbours]
  end

  private_class_method

  def self.calculate_alive_neighbours(cells)
    cells.inject(0) do |sum, n|
      sum = sum + 1 if n.alive?
      sum
    end
  end
end
