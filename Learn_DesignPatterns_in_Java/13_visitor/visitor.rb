class Visitor
  ABSTRACT_METHOD = [
    :visit,
  ]

  ABSTRACT_PRIVATE_METHOD = [
    :visit_file,
    :visit_directory,
  ]

  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

  private

  ABSTRACT_PRIVATE_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

end
