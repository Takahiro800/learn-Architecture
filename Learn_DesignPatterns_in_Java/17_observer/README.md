# 17 Observerパターン
- 状態の変化を通知する

# 登場人物
## Subject
- 「観察される側」を表す
- 観察者であるObserverを追加する・削除するメソッドを持つ


## ConcreteSubject
- 状態が変化したら、そのことを登録されているObserver役に伝える

## Observer
- Subject役から「状態が変化しました」と教えてもらう役

## ConcreteObserver
- 具体的なObserver役。updateメソッドが呼び出されると、そのメソッドの中でSubject役の現在の状態を取得する。


# 考えを広げるためのヒント
## ここにも交換可能性が登場
- デザインパターンの目的の一つは、クラスを再利用可能な部品にすること
- 状態をもつConcreteSubjectと、状態変化を通知してもらうConcreteObserverが存在し、この二つをつなぐのが抽象クラスのSubjectとObserverである。
- Concreteクラスは、それぞれ相手がどのような具象クラスのインスタンスかは知らない。が、抽象クラスについてはわかっている。

# 更新のためのヒント情報の扱い
```ruby:
  update(generator)
```
Subjectだけを渡している。Observerは必要に応じて、Subjectから情報を得る

```ruby:
update(generator, number)
```

ヒント情報も渡している。これにより、Subjectから情報を得る手間が減る。
が、Subject役がObserver役の処理内容を意識していることになる。

```ruby:
update(number)
```
どのSubject役からの情報かわからないため、複数のSubjectを観察する際には不適

# 関連しているパターン
## Mediatorパターン
- Mediatorパターンでは、Mediator役とColleague役の通信にObserverパターンを使う場合がある。
- どちらも「状態を通知する」点は似ている。が目的や視点は異なる
- Mediatorパターンも状態変化が通知されるが、Colleague役の調整という目的で動いているだけ
- Observerパターンは、Subject役の状態変化をObserver役に通知・同期をとることに主眼がある
