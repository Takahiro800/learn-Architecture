# NOTE: javaのimplementsを実装するためにmoduleにする

module Strategy
  ABSTRACT_METHOD = [
    :next_hand,
    :study
  ]

  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
