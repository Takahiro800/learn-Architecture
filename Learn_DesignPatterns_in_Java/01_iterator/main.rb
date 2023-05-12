require_relative 'book_shelf'
require_relative 'book_shelf_iterator'


book_shelf = BookShelf.new
book_shelf.append_book(Book.new("Around the World in 80 days"))
book_shelf.append_book(Book.new("Bible"))
book_shelf.append_book(Book.new("Cinderella"))
book_shelf.append_book(Book.new("Daddy-Long-Legs"))

# 明示的にIteratorを使う
it = book_shelf.iterator()

# NOTE: book_shelfの実装に依存していないことがポイント。
while it.has_next?
  book = it.next
  puts book.name
end
