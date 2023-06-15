# frozen_string_literal: true
require_relative 'display'

class StringDisplay < Dispaly
  def initialize(string)
    @string = string
  end

  def columns
    @string.length
  end

  def rows
    1
  end

  def row_text(row)
    raise ArgumentError.new("Index Out of Bounds Exception") unless row == 0

    @string
  end
end
