# frozen_string_literal: true

class Gamer
  FRUITS = ["りんご", "ぶどう", "バナナ", "みかん"]

  attr_reader :money

  def initialize(money)
    @money = money
    @fruits = []
  end

  def bet
    dice = rand(6) + 1

    case dice
    when 1
      @money += 100
      puts "所持金が増えました"
    when 2
      @money /= 2
      puts "所持金が半分になりました"
    when 6
      f = get_fruit
      puts "フルーツ(#{f})をもらいました"
      @fruits.append(f)
    else
      puts "何も起こりませんでした"
    end
  end

  def create_memento
    m = Memento.new(money)
    @fruits.each do |f|
      if f.start_with?("美味しい")
        m.add_fruit(f)
      end
    end

    m
  end

  def restore_memento(memento)
    @money = memento.money
    @fruits = memento.fruits
  end

  def to_string
    "money = " + money.to_s + ", fruits = " + @fruits.to_s
  end

  def get_fruit
    f = FRUITS[rand(FRUITS.length)]

    if rand(2).positive?
      return "美味しい" + f
    else
      return f
    end
  end

end
