# Proxy
必要になってから作る

# 登場人物
## Subject(主体)の役
- ProxyとRealSubject役を同一視するためのインターフェースを定める。
- Subject役のおかげで、Client側はProxy役とRealSubject役の違いを意識する必要がない

## Proxy(代理人)の役
- Clientからの要求をできるだけ処理し、自分だけでは処理できない場合はRealSubject役にお願いする.

## RealSubject(実際の主体)の役
- Proxy役で処理できない場合に登場するのが、RealSubject役。

## Client(依頼人)の役

# 考えを広げるヒント
## 代理人を使ってスピードアップ
## 分ける必要はあるのか
- 2つに分けず、Printerクラスに最初から遅延評価の機能を入れておくこともできる。が、ProxyとRealSubjectに分けることで、プログラムの部品化が進み、個別に修正することができる.
- Proxy役の実装を変えれば、Subject役で定義されている処理のうち、何を代理人が処理し、何をRealSubject役が処理するのかを変更することができる。しかも、RealSubject役には変更を加えずに行うことができる

## 委譲

## 透過的
- Proxy役とRealSubject役は、同じSubject役のインターフェースを実装をしている。呼び出す側は、ProxyなのかRealSubject役なのかを意識せずに使うことができる。　このとき、ClientとRealSubjectの間に存在するProxy役は「透過的である」と呼ぶ

## 様々なProxy
### Virtula Proxy(仮想プロキシ)
### Remote Proxy(遠隔プロキシ)
- RealSubject役がネットワークの向こう側にいるにもかかわらず、あたかも自分のそばにいるかのように（透過的に）メソッド呼び出しができるもの
### Access Proxy
-　Remote Proxyに対してアクセス制限を設けたもの

# 関連しているパターン
## Adapter
- Adapterパターンは、インターフェースが異なるオブジェクトの間を埋める働きをする。
- 一方、Proxyパターンは、Proxy役とRealSubject役でインターフェースは同じ

## Decoratorパターン
- DecoratorもProxyもどちらも透過的であり、似ているが、目的が異なる
- Decoratorパターンの目的は、新しい機能を追加すること
- Proxyは、追加よりも肩代わりして本人のアクセスを軽減すること.
