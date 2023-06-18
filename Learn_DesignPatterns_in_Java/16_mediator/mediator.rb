# frozen_string_literal: true

class Mediator
  ABSTRACT_METHOD = [
    :create_cooleagues,
    :colleague_changed,
  ]

  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
enkd
