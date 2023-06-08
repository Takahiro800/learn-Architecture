class DisplayImpl
  ABSTRACT_METHOD = [
    :raw_open,
    :raw_print,
    :raw_close,
  ]

  # %i[raw_open raw_print raw_close].each do |m|
  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end
end
