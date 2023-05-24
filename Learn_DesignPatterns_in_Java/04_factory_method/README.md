# Factory Method パターン
- インスタンス生成をサブクラスに任せる

## メリット
- frame_workは具象の`id_card`に依存しない
- パターン利用と開発者間の意思疎通が大切
- スーパークラスで骨組みを理解
  - 使われている抽象メソッドが何かを見極める
- その上で、具象でメソッドの実装を読む

# 関連パターン
- Template Method
  - これの応用が Factory Method
- Singleton
- Composite
- Iterator

**デザインパターンを把握する上では必ずクラスやインターフェースの相互関係に目をむける**
