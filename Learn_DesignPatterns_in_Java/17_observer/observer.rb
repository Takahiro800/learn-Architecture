# frozen_string_literal: true

class Observer
  def update
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
