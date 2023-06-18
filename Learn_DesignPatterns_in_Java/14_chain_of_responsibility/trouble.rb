# frozen_string_literal: true

class Trouble
  attr_reader :number

  def initialize(num)
    @number = num.to_i
  end

  def to_string
    "[Trouble #{number} ]"
  end
end
