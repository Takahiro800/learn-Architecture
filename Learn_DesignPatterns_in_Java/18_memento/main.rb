require_relative 'gamer'
require_relative 'memento'

gamer = Gamer.new(100)
memento = gamer.create_memento

100.times.each do |i|
  puts ("================ " + i.to_s)
  puts ("現状：" + gamer.to_string)

  # ゲームを進める
  gamer.bet

  puts "所持金は#{gamer.money}円になりました"

  # Mementoの取扱の決定
  if gamer.money > memento.money
    puts "*だいぶ増えたので、現在の状態を保存しておこう"
    memento = gamer.create_memento
  elsif gamer.money < memento.money / 2
    puts "だいぶ減ったので、以前の状態を復元しよう！"
    gamer.restore_memento(memento)
  end

  begin
    sleep(0.1)
  rescue Interrupt
  end
end
