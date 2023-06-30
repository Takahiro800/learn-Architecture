# frozen_string_literal: true

class Printable
  def print_text
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end
end
