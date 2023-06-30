# frozen_string_literal: true

class Command
  def execute
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end
end
