require_relative 'abstract_display'

class StringDisplay
  include AbstractDisplay

  def initialize(str)
    @str = str
    @with = str.length
  end

  def open
    print_line
  end

  def print_body
    print("|")
    print(@str)
    puts("|")
  end

  def close
    print_line
  end

  def print_line
    print("+")
    @with.times { print("-") }
    puts("+")
  end
end
