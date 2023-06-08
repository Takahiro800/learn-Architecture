require_relative 'player'
require_relative 'winning_strategy'
require_relative 'prob_strategy'

args = gets.chomp.split

return unless args.length == 2

seed1 = args[0].to_i
seed2 = args[1].to_i

player1 = Player.new("Taro", WinningStrategy.new(seed1))
player2 = Player.new("Hana", ProbStrategy.new(seed2))

10000.times do
  next_hand_1 = player1.next_hand
  next_hand_2 = player2.next_hand

  if next_hand_1.is_stronger_than?(next_hand_2)
    puts "Winne:r #{player1.to_string}"
    player1.win
    player2.lose
  elsif next_hand_2.is_stronger_than?(next_hand_1)
    puts "Winne:r #{player2.to_string}"
    player2.win
    player1.lose
  else
    puts "Even..."
    player1.even
    player2.even
  end
end
puts "Total result:"
puts player1.to_string
puts player2.to_string
