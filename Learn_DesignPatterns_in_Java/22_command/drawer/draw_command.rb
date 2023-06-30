# frozen_string_literal: true

require_relative '../command/command'

class DrawCommand < Command
  def initialize(drawbale, posiotn)
    @drawable = drawbale
    @position = posiotn
  end

  def execute
    @drawable.draw(@position.x, @position.y)
  end
end
