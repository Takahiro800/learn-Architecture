module AbstractDisplay
  %i[open print_body close].each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

  def display
    open
    5.times.each { print_body }
    close
  end
end
