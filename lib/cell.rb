class Cell
  def initialize(state)
    @current_state = state
  end

  attr_reader :current_state

  def alive?
    current_state.downcase.strip == 'alive'
  end
end
