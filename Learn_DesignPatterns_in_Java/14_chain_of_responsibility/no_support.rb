# frozen_string_literal: true
#
require_relative 'support'

class NoSupport < Support
  def initialize(name)
    super(name)
  end

  def resolve?(trouble)
    false
  end
end
