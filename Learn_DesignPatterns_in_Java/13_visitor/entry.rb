require_relative 'element'

class Entry < Element
  ABSTRACT_METHOD = [
    :get_name,
    :get_size,
  ]

  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

  def print_list
    print_list_with_prefix("")
  end

  def to_string
    get_name + " (" + get_size.to_s + ")"
  end
end
