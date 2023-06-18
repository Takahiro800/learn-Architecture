# frozen_string_literal: true

require_relative 'support'

class OddSupport < Support
  def initialize(name)
    super(name)
  end

  def resolve?(trouble)
    trouble.number.odd?
  end
end
