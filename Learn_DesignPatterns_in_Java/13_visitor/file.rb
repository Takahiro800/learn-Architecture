require_relative 'entry'

class OFile < Entry
  attr_reader :name, :size

  def initialize(name, size)
    @name = name
    @size = size
  end

  def get_name
    name
  end

  def get_size
    size
  end

  def accept(visitor)
    visitor.visit(self)
  end
end
