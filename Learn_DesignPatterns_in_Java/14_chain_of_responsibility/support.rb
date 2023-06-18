# frozen_string_literal: true

class Support
  attr_reader :name
  attr_accessor :next

  def initialize(name)
    @name = name
    @next = nil
  end

  def set_next(support)
    @next = support
    @next
  end

  # トラブル解決の手順
  def support(trouble)
    if resolve?(trouble)
      done(trouble)
    elsif !@next.nil?
      @next.support(trouble)
    else
      fail(trouble)
    end
  end

  # トラブル解決者の文字列表現
  def to_string
    "[ #{name}]"
  end

  def resolve?(trouble)
    define_method(m) { raise NotImplementedError.new("#{self.class}##{__method__} が実装されていません") }
  end

  private

  def done(trouble)
    puts (trouble.to_string + " is resolved by " + self.to_string + ".")
  end

  def fail(trouble)
    puts (trouble.to_string + " cannot resolved.")
  end
end
