# frozen_string_literal: true

class Colleague
  ABSTRACT_METHOD = [
    :set_mediator,
    :set_colleague_enabled
  ]

  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
