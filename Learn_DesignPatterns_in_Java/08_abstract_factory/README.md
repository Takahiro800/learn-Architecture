# Abstract Factory パターン
- 関連する部品を組み合わせて製品を作る

# 具体的な工場を追加するのは簡単
- どのようなクラスを作り、どのようなメソッドを実装すれば良いのかはっきりしている
- いくら具体的な工場を追加しても、抽象クラスやそれを使用するmain.rbには変更がない

# 部品を追加するのは困難

# 関連しているパターン
- Factory Method
  - 製品や部品を作るところは、Factory Methodパターンになることがある
- Composite
  - Abstract Factoryパターンで作られる製品は、Compositeパターンになることがある