class Player
  def hand
    puts "数字を入力してください\r\n1: グー\r\n2: チョキ\r\n3: パー"
    number = gets.to_i
    if number == 1 || number == 2 || number == 3
      return number
    else
      hand
    end
  end
end


class Enemy
  def hand
    return rand(1..3)
  end
end



class Janken
  def pon(player_hand, enemy_hand)

    e_h = ["グー", "チョキ", "パー"]

    if (player_hand - enemy_hand + 3)%3 == 2
      puts "相手の手は#{e_h[enemy_hand]}です。あなたの勝ちです。"
    elsif (player_hand - enemy_hand + 3)%3 == 1
      puts "相手の手は#{e_h[enemy_hand]}です。あなたの負けです。"
    elsif (player_hand - enemy_hand + 3)%3 == 0
      puts "相手の手は#{e_h[enemy_hand]}です。引き分けです。"
     #もう一度じゃんけんをするために
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new

      janken.pon(player.hand, enemy.hand)
    end
  end
end



player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
