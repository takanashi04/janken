# じゃんけんフェーズの処理
def janken
  puts "0がグー、1がチョキ、2がパー、3で逃げる"
  your_hand = gets.to_i
  
  # 例外の処理
  if your_hand > 3
    puts "０から3の間の数を入力してください"
  end
  
  cpu_hand = rand(3)
  janken_hands = ["グー","チョキ","パー"]
  
  puts "---------------------"
  puts "ポン！"
  puts "あなたは#{janken_hands[your_hand]}を出しました"
  puts "相手は#{janken_hands[cpu_hand]}を出しました"
  puts "---------------------"
  
  if your_hand == cpu_hand
    puts "あいこ！"
    return 0
  elsif (your_hand == 0 && cpu_hand == 1) ||
        (your_hand == 1 && cpu_hand == 2)
    puts "あなたのターン！"
    return 1
  else
    puts "相手のターン！"
    return 2
  end
  
  # あなたの3(逃げる)の時の処理
  if your_hand == 3
    puts "あなたは勝負から逃げました"
    exit
  end
end
  
# あっちむいてほいフェーズの処理
def attimuite
  puts "あっち向いて・・・"
  puts "数字を入力してください / 0↑ 1→ 2↓ 3←"
  your_hoi = gets.to_i
  cpu_hoi = rand(3)
  
  hois = ["↑", "→", "↓", "←"]
  puts "---------------------"
  puts "ホイ！"
  puts "あなたは#{hois[your_hoi]}を出しました"
  puts "相手は#{hois[cpu_hoi]}を出しました"
  puts "---------------------"
  
  if your_hoi == cpu_hoi
    puts "kimari"
    return false
  else
    puts "もう一度！"
    return true
  end
end

if janken == 0
  puts "あいこ"
elsif janken == 1
  puts "あなたのターン"
else 
  puts "相手のターン"
end
