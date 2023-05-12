require_relative 'iterator'
require_relative 'book_shelf'

class BookShelfIterator
  include Iterator

  attr_accessor :index
  attr_reader :book_shelf

  def initialize(shlef)
    @book_shelf = shlef
    @index = 0
  end

  def has_next?
    @index < @book_shelf.length - 1
  end

  # TODO: rename?
  def next
    book = book_shelf.get_book_at(@index)
    @index = @index + 1
    book
  end
end
