# frozen_string_literal: true

require_relative 'number_generator'

class RandomNumberGenerator < NumberGenerator
  attr_reader :number

  def initialize
    super
  end

  def execute
    20.times.each do
      @number = rand(50)
      notify_observers
    end
  end
end
