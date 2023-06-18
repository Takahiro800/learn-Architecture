# frozen_string_literal: true

class ColleagueButton < Colleague
  def initialize(caption)
    # java.awt.Buttonのサブクラスの想定
    super(caption)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(bool)
    # JavaのGUIのメソッド
    set_enabled(bool)
  end
end
