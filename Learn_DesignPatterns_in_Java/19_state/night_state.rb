# frozen_string_literal: true

require_relative 'state'

class NightState < State
  @instance = new

  private_class_method :new

  def self.instance
    @instance
  end

  def do_clock(context, hour)
    if in_night?(hour)
      context.change_state(DayState.instance)
    end
  end

  def do_use(context)
    context.call_security_center("金庫使用（昼間）")
  end

  def do_alarm(context)
    context.call_security_center("非常ベル（昼間）")
  end

  def do_phone(context)
    context.call_security_center("通常の通話（昼間）")
  end

  def to_string
    "[昼間]"
  end
end
