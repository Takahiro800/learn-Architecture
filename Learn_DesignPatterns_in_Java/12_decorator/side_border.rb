# frozen_string_literal: true
require_relative 'border'

class SideBorder < Border
  def initialize(display, border_char)
    @display = display
    @border_char = border_char
  end

  def columns
    1 + @display.columns + 1
  end

  def rows
    @display.rows
  end

  def row_text(row)
    @border_char + @display.row_text(row) + @border_char
  end
end
