require_relative 'winning_strategy'
require_relative 'prob_strategy'

class Player
  def initialize(name, strategy)
    @name = name
    @strategy = strategy
    @game_count = 0
    @win_count = 0
    @lose_count = 0
  end

  def next_hand
    @strategy.next_hand
  end

  def win
    @strategy.study(true)
    @win_count += 1
    @game_count += 1
  end

  def lose
    @strategy.study(false)
    @lose_count += 1
    @game_count += 1
  end

  def even
    @game_count += 1
  end

  def to_string
    "[#{@name} : #{@game_count} games, #{@win_count}win, #{@lose_count}lose]"
  end
end
