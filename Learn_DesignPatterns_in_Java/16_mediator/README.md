# Mediator パターン
- 相手は相談役ひとりだけ
- 多数のオブジェクトの間の調整を行わなければならないときこそ、Mediatorパターンの出番

# 登場人物
## Mediator
- 調整を行うためのインターフェース(API)を定める

## ConcreteMediator
- Mediatorのインターフェースを実装し、実際の調整を行う

## Colleague
- Mediator役と通信を行うインターフェースを定める

## ConcreteColleague
- Colleagueのインターフェースを実装する


# 考えを広めるためのヒント
## 分散が災いになるとき
## 通信経路の増加
## 再利用できるのは何か？

# 関連しているパターン
## Facadeパターン
- Mediatorは双方向、Facadeは一方向

## Observerパターン
- Mediator役とColleague役の通信は、Observerパターンを使って行われる場合もある
