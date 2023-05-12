module Iterator
  def has_next?
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end

  def next
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end
end
