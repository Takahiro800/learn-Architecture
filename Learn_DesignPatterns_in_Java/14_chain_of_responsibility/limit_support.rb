# frozen_string_literal: true

require_relative 'support'

class LimitSupport < Support
  attr_reader :limit

  def initialize(name, limit)
    super(name)
    @limit = limit
  end

  def resolve?(trouble)
    trouble.number < limit
  end
end
