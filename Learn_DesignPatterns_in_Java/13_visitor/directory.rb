require_relative 'entry'

class Directory < Entry
  attr_reader :name, :directories

  def initialize(name)
    @name = name
    @directories = []
  end

  def get_name
    name
  end

  def get_size
    directories.sum(&:get_size)
  end

  def add(entry)
    directories.push(entry)
    self
  end

  def accept(visitor)
    visitor.visit(self)
  end

end
