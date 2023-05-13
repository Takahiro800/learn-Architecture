# Iterator パターン
- 配列など、複数の要素を持つオブジェクトに対して、各々の要素に対して処理を回す

```ruby:main.rb
while it.has_next?
  book = it.next
  puts book.name
end
```
上記の処理において、`book_shelf`の実装に依存していないことがポイント。
サンプルコードでは配列を渡しているが、これが別のクラスでも良いことがこのパターンの旨み

# 関連パターン
1. `Visitor`
2. `Composite`
3. `Factory Method`

# 参考記事
[Rubyでインターフェースクラスを実現する - Qiita](https://qiita.com/developer-kikikaikai/items/b1e2bd1c2bbc223de534)

抽象クラスの実装について参考にした
