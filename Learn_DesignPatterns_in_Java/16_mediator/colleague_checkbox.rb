# frozen_string_literal: true

class ColleagueCheckbox < Colleague
  def initialize(caption, group, state)
    # JavaのGUIのメソッド
    super(caption, group, state)
  end

  def set_mediator(mediator)
    @mediator = mediator
  end

  def set_colleague_enabled(bool)
    # JavaのGUIのメソッド
    set_enabled(bool)
  end

  def item_state_changed(evnet)
    # 状態が変化したらMediatorに通知する
    mediator.colleague_changed
  end
end
