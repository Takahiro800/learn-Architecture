class Item
  def initialize(caption)
    @caption = caption
  end

  def make_html
    raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません")
  end
end
