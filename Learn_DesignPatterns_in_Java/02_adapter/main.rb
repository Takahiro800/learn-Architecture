require_relative 'print_banner'

# NOTE: 既存のクラス：Bannerの実装に依存していない、
# NOTE: かつ必要だったメソッドが Print moduleを取り入れることで実装できているのがポイント
p = PrintBanner.new("Hello")
p.print_weak
p.print_strong
