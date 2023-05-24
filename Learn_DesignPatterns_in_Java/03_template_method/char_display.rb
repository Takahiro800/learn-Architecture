require_relative 'abstract_display'

class CharDisplay
  include AbstractDisplay

  def initialize(char)
    @char = char
  end

  def open
    print("<< ")
  end

  def print_body
    print(@char)
  end

  def close
    puts(" >>")
  end
end
