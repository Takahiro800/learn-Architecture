# frozen_string_literal: true

class State
  ABSTRACT_METHODS = [
    :do_clock, # 時刻設定
    :do_use,   # 金庫使用
    :do_alarm, # 非常ベル
    :do_phone, # 通常通話
  ]

  ABSTRACT_METHODS.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

  private

  def in_day?(hour)
    9 <= hour && hour < 17
  end

  def in_night?(hour)
    !in_day?(hour)
  end
end
