# frozen_string_literal: true

class Context
  ABSTRACT_METHODS = [
    :do_clock, # 時刻設定
    :do_use,   # 金庫使用
    :do_alarm, # 非常ベル
    :do_phone, # 通常通話
  ]

  ABSTRACT_METHODS.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
