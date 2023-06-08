require_relative 'strategy'
require_relative 'hand'

class ProbStrategy
  include Strategy

  def initialize(seed)
    @random = Random.new(seed)
    @history = [
      [1,1,1],
      [1,1,1],
      [1,1,1],
    ]
    @prev_hand_value = 0
    @current_hand_value = 0
  end

  def next_hand
    bet = rand(history_sum(@current_hand_value))

    if bet < @history[@current_hand_value][0]
      hand_value = 0
    elsif bet < @history[@current_hand_value][0] + @history[@current_hand_value][1]
      hand_value = 1
    else
      hand_value = 2
    end

    @prev_hand_value = @current_hand_value
    @current_hand_value = hand_value
    Hand.get_hand(hand_value)
  end

  def study(win)
    if win
      @history[@prev_hand_value][@current_hand_value] += 1
    else
      # TODO: ここは不適だが、暫定的にサンプルコードに従う
      @history[@prev_hand_value][(@current_hand_value + 1) % 3] += 1
      @history[@prev_hand_value][(@current_hand_value + 2) % 3] += 1
    end
  end

  private

  def history_sum(current_hand_value)
    @history[current_hand_value].sum
  end
end
