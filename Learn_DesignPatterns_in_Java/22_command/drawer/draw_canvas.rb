# frozen_string_literal: true

require_relative '../command/macro_command'
require_relative '../command/drawable'

# 本来は、CanvasというJavaのライブラリを使っていた
class DrawCanvas < Drawable
  def initialize(width, height, history)
    set_size(width, height)
    set_background(color.white)
    @history = history
  end

  # 履歴全体を再描画
  def paint(graphics)
    history.execute
  end

  def draw(x,y)
    g = get_graphics
    g.set_color(color)
    g.fill_oval(x - radius, y - radius, radius * 2, radius * 2)
  end

  private

  def set_size(width, height)
    # 何か
  end

  def set_background(color)
    # 何か
  end
end
