# frozen_string_literal: true

class Dispaly
  ABSTRACT_METHOD = [
    :columns,
    :rows,
    :row_text,
  ]

  ABSTRACT_METHOD.each do |m|
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

  def show
    rows.times.each{ |i| puts(row_text(i)) }
  end
end
