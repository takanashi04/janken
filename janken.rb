# じゃんけんフェーズの処理
def janken
  puts "じゃんけん・・・"
  puts "0がグー、1がチョキ、2がパー、3で逃げる"
  your_hand = gets.to_i
  
  cpu_hand = rand(3)
  janken_hands = ["グー","チョキ","パー"]
  
    # あなたの3(逃げる)の時の処理
  if your_hand == 3
    puts "あなたは勝負から逃げました"
    exit
  end
  
  puts "ポン！"
  puts "---------------------"
  puts "あなたは#{janken_hands[your_hand]}を出しました"
  puts "相手は#{janken_hands[cpu_hand]}を出しました"
  puts "---------------------"
  
  if your_hand == cpu_hand
    puts "あいこ！"
    return "aiko"
  elsif (your_hand == 0 && cpu_hand == 1) ||
        (your_hand == 1 && cpu_hand == 2)
    puts "あなたのターン！"
    return "your_turn"
  else
    puts "相手のターン！"
    return "cpu_turn"
  end
end
  
# あっちむいてほいフェーズの処理
def attimuite
  puts "あっち向いて・・・"
  puts "数字を入力してください / 0↑ 1→ 2↓ 3←"
  your_hoi = gets.to_i
  cpu_hoi = rand(3)
  
  hois = ["↑", "→", "↓", "←"]
  puts "ホイ！"
  puts "---------------------"
  puts "あなたは#{hois[your_hoi]}を出しました"
  puts "相手は#{hois[cpu_hoi]}を出しました"
  puts "---------------------"
  
  if your_hoi == cpu_hoi
    puts "決まり！"
    return false
  else
    puts "もう一度！"
    return true
  end
end

next_game = true

# 全体の処理
while next_game
  syouhai = janken
  case syouhai
  when "aiko"
    next_game = true
  when "your_turn"
    next_game = attimuite
    if next_game == true
    else
      puts "あなたの勝ち！！！"
    end
  when "cpu_turn"
    next_game = attimuite
    if next_game == true
    else
      puts "あなたの負け・・・"
    end
  else
  end
end
