# frozen_string_literal: true
#
require_relative 'big_char_factory'

class BigString
  def initialize(string, shared = true)
    if shared
      init_shred(string)
    else
      init_unshared(string)
    end
  end

  def print_out
    @big_chars.each(&:print_out)
  end

  private

  def init_shred(string)
    factory = BigCharFactory.get_instance
    @big_chars = string.chars.map { |c| factory.get_big_char(c) }
  end

  def init_unshared(string)
    @big_chars = string.chars.map { |c| BigChar.new(c) }
  end
end
