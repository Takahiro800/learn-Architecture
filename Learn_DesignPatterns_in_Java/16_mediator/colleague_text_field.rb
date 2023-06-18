# frozen_string_literal: true

require_relative 'colleague'

class ColleagueTextField < Colleague
  def initialize(text, columns)
    super(text, columns)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(bool)
    # JavaのGUIのメソッド
    set_enabled(bool)
    set_background(bool ? Color.white : Color.lightGray)
  end

  # 文字列が変化したら、Mediatorに通知する
  def text_value_changed(event)
    mediator.colleague_changed
  end
end
