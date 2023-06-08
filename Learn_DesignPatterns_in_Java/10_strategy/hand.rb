# frozen_string_literal: true

class Hand
  attr_reader :hand_value

  def initialize(name, hand_value)
    @name = name
    @hand_value = hand_value
  end

  ROCK = Hand.new("グー", 0)
  SCISSORS = Hand.new("チョキ", 1)
  PAPER = Hand.new("パー", 2)

  HANDS = [ROCK, SCISSORS, PAPER]

  def is_stronger_than?(hand)
    fight(hand) == 1
  end

  def is_weaker_than?(hand)
    fight(hand) == -1
  end

  def fight(hand)
    return 0 if @hand_value == hand.hand_value

    return 1 if (@hand_value + 1) % 3 == hand.hand_value

    -1
  end

  # def to_string
  #   @name
  # end

  def self.get_hand(hand_value)
    HANDS[hand_value]
  end
end
