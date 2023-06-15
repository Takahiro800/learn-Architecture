# Composite パターン
- 容器と中身を同一視し、再起的な構造を作る

## 登場人物
### Leaf(葉)の役
- 中身を表す

### Composite(容器)
- LeafやCompositeを入れる

### Component
- LeafとCompositeを同一視するためのもの

## 視野を広げるためのヒント
- 複数のものを集めた状態と単数のものを同一視する
### `add`メソッドはどこに定義するか？
- 容器と中身を統一した結果として得られるものは何かと同値

## 関連のあるパターン
### Command
### Visitor
- Compoisteを巡りながら処理を行う

### Decorator
- 飾り枠と中身を同一視する
