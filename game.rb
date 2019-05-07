class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts "数字を入力してください\r\n0: グー\r\n1: チョキ\r\n2: パー"
    number = gets.to_i
    if number != 0 && number != 1 && number != 2
      hand
    else
      return number
    end
  end
end



class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    return rand(0..2)
  end
end



class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
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



