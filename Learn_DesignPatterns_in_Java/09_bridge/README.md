# Bridge パターン
- 機能の階層と実装の階層を分ける
- これは、ちょうぜつソフトウェア設計の本の方が理解しやすかった

# 概要
- 機能の階層と実装の階層を分け、機能の階層のスーパークラスに、実装の階層のスーパークラスのインスタンスを渡す
- 分けておくと拡張が楽
  - 独立に拡張できる
  - ex) プログラムの実行環境
    - `ConcreteImplementer`を新規の実行環境分追加すれば機能については修正しなくて済む

## 継承は固い結びつき、移譲は緩やかな結びつき
- 継承
```ruby:
SubClass < SuperClass
```

- 移譲
```ruby:
  def open
    @impl.raw_open
  end

  def close
    @impl.raw_close
    puts ""
  end

  def print
    @impl.raw_print
  end
```
- `impl`のたらい回し

# 登場人物
## `Abstraction`(抽象化)の役
  - 機能階層の最上位。Implのメソッドを用いて基本的な機能を持つ
## `RefinedAbstraction`(改善した抽象化)の役
- 機能を追加したサブクラス

## `Implementer`の役
- 実装階層の最上位。`Abstraction`のインターフェースを実装するためのメソッドを提供する

## `ConcreteImplemnter`(具体的な実装者)
- 具体的に`Implemnter`役のAPIを実装
