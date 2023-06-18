# frozen_string_literal: true

require_relative 'support'

class SpecialSupport < Support
  attr_reader :number

  def initialize(name, num)
    super(name)
    @number = num
  end

  def resolve?(trouble)
    trouble.number == number
  end
end
