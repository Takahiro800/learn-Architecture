require_relative 'strategy'
require_relative 'hand'

class WinningStrategy
  include Strategy

  def initialize(seed)
    @won = false
    @random = Random.new(seed)
  end

  def next_hand
    @prev_hand = Hand.get_hand(rand(3)) unless @won
  end

  def study(win)
    won = win
  end
end
