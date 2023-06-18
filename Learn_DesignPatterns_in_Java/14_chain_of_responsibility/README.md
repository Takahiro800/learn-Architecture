# Chain of Responsibility
- 責任のたらい回し

# 登場人物
## Handler
- 要求を処理するインターフェースを定める役

## ConcreteHandler
- 要求を処理する具体的な役

## Client

# 考えを広げるためのヒント
- 要求を出す人と要求を処理する人を緩やかに結びつける
- 動的に連鎖の形態を変える
- 自分の仕事に集中できる
- たらい回しで処理は遅くならないのか

# 関連しているパターン
## Composite
- Handler役にはCompositeパターンが登場することがよくある

## Commandパターン
- Handler役に対して投げられる「要求」には、Commandパターンが使われる場合がある
