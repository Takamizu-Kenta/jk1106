def janken
        puts "じゃんけん..."
        puts "[0] グー\n[1] チョキ\n[2] パー\n[3]やめる"

        player_hand = gets.to_i
        program_hand = rand(3)

        if player_hand == 3
        exit
        end

        hands= ["グー", "チョキ", "パー"]

        puts "ぽい！"

        puts "あなた:#{hands[player_hand]}", "あいて:#{hands[program_hand]}"

        win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        draw = player_hand == program_hand
        lose = player_hand != program_hand


        if draw
          puts "あいこで！"
        return true

        elsif win
          puts "あなたの勝ち！！"
        return false, "Win"

        else
          puts "あなたの負けです..."
        return false, "Lose"
        end
end

        result = ""

        next_game = true

        while next_game
          next_game, result = janken
        end


  #あっちむいてほい
def atmit(result)
        puts "あっちむいて..."
        puts "[0] うえ\n[1] した\n[2] みぎ\n[3]ひだり\n[4]やめる"
      
        player_dire = gets.to_i
        program_dire = rand(4)

        if player_dire == 4
          exit
        end
        
        direction= ["うえ", "した", "みぎ", "ひだり"]
        
        puts "ほい！"
        
        puts "あなた:#{direction[player_dire]}", "あいて:#{direction[program_dire]}"

  if player_dire == program_dire && result == "Win"
        puts "あなたの勝ち！"
    return false

  elsif player_dire == program_dire && result == "Lose"
    puts "あなたの負け。。。"
    return false
    
  else
       puts "引き分け！"
    return true
  end
end

  atmit(result)

  

# puts "もういっかい挑戦しますか？"
# puts "[0] 続ける\n[1] やめる\n"

# continue = gets.to_i


#   if 
#     while continue == 0
#     janken
#     atmit(result)
#     end
#   else continue == 1
#     exit
#   end

#-----------------
next_game = nil
if
  while next_game == true
    janken
    atmit(result)
  end
else next_game == false
  exit
end


#ｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰｰ

  # next_game = ""

  # while 
  #   if next_game == "lose"
  #   next_game = janken

  #   else 
  #     next_game = "win"
  #     exit
  #    end
  # end
  