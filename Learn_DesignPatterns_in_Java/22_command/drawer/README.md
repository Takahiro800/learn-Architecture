# Commandパターン
-　命令をクラスにする

# 登場人物
- 命令のインターフェースを定義する役

## Command(命令)の役
- Commandのインターフェースを実際に実装している役

## ConcreteCommand(具体的命令)の役
- 実際にインターフェースを実装している役

## Receiver(受信者)の役
- Command役が命令を実行するときに対象となる役。命令の受け取り手。
- サンプルでDrawCommandの命令を受け取っているのは、DrawCanvasクラス

## Client(依頼者)の役
- ConcreteCommand役を生成し、その際にReceiver役を割り当てるやく。

## Invoker(起動車)の役
- 命令の実行を開始する役。Command役で定義されているAPIを呼び出す役になる。

# 関連するパターン
## Compositeパターン
- マクロコマンドを実現するために、Compositeパターンが使われる場合がある

## Mementoパターン
- Commandパターンの履歴を保存するためにMementoパターンを使う場合もある

## Prototypeパターン
- 発生したイベント(作成した命令)を複製したい場合にPrototypeパターンが使われる場合がある
