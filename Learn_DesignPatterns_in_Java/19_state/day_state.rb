# frozen_string_literal: true

require_relative 'state'

class DayState < State
  @instance = new

  private_class_method :new

  def self.instance
    @instance
  end

  def do_clock(context, hour)
    if in_night?(hour)
      context.change_state(NightState.instance)
    end
  end

  def do_use(context)
    context.call_security_center("非常：夜間の金庫使用！")
  end

  def do_alarm(context)
    context.call_security_center("非常ベル（夜間）")
  end

  def do_phone(context)
    context.call_security_center("夜間の通話録音")
  end

  def to_string
    "[夜間]"
  end
end
