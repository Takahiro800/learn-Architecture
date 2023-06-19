# frozen_string_literal: true

class Memento
  attr_reader :money, :fruits

  def initialize(money)
    @money = money
    @fruits = []
  end

  def add_fruit(fruit)
    @fruits.append(fruit)
  end
end
