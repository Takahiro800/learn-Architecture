module Iterable
  def iterator
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end
end
