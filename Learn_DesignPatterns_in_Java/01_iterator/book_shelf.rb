require_relative 'book'

class BookShelf
  attr_accessor :books

  def initialize()
    @books = []
  end

  def get_book_at(int)
    books[int]
  end

  def append_book(book)
    raise ArgumentError unless book.is_a?(Book)

    books.append(book)
  end

  def length
    books.length
  end

  def iterator
    BookShelfIterator.new(self)
  end
end
