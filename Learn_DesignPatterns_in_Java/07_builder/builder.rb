class Builder
  def initialize
    @sb = []
  end

  %i[make_title make_string make_items close result].each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
