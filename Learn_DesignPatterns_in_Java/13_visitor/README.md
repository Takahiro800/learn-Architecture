# Visitor パターン
- 構造をわたり歩きながら仕事をする

# 考えを広げるためのヒント
## ダブルディスパッチ
- `elemnt.accept(visitor)`
- `visitor.visit(element)`

ConcreteElement役とConcreteVisitor役の組みによって実際の処理が決定する。これをダブルディスパッチと呼ぶ


## The Open-Closed Principle 拡張については開き、修正については閉じる
- 機能の拡張性については、受け入れる
- が、拡張するたびにクラスの他の箇所に修正が必要なのは良くない。

## ConcreteElement役の追加は困難
- 例として、「Deviceクラス」を追加すると、Visitorクラスには`visit_device`メソッドが新規に必要になる

# 関連しているパターン
## Iteratorパターン
- どちらも、あるデータ構造の上で処理をするもの
- `Iterator`パターンは、データ構造が保持している要素を１つ1つ取得するのに使う
- `Visitor`パターンは、データ構造が保持している要素に特定の処理を施すのに使います

## Compositeパターン
- 訪問先となるデータ構造は、Compositeパターンになることがある

## Intepreterパターン
- Visitorパターンを使うこともある。
- 例）構文木を作った後、構文木の各ノードを巡回しながら処理を行う
