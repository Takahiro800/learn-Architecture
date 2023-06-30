# Flyweightパターン
- 同じものを共有して、無駄をなくす

# 登場人物
## Flyweight
- 普通に扱うと重くなるために共有した方が良い役。

## FlyweightFactory
- Flyweight役を作成する役。この工場を使って作成するとインスタンスが共有される。

## Client
- FlyweightFactory役を使ってFlyweight役を作り出し、それを利用する役。

# 考えを広げるためのヒント
## 複数箇所に影響が及ぶ
- 一つのインスタンスを共有するとは、一箇所を変更すると全ての出現箇所に影響を及ぼすということ

## intrinsicとextrinsic
- 共有する情報・本質的な情報をintrinsicな情報と呼ぶ
- 共有しない・外からの情報をextrinsicな情報と呼ぶ

# 関連しているパターン
## Proxy
- Flyweightパターンでは、インスタンスの生成に時間がかかる場合、インスタンスの共有によって処理スピードが上がる
- Proxyパターンでは、代理人を立てることによって処理スピードを上げる

## Composite
- Flyweightパターンを使って、CompositeパターンのLeaf役を共有できる場合がある

## Singleton
- FlyweightFactory役は、Singletonパターンの場合がある
- Singleton役のインスタンスはintrinsicな情報のみを持つ
