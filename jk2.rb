def janken

        puts "じゃんけん..."
        puts "[0] グー\n[1] チョキ\n[2] パー\n[3]やめる"

        player_hand = gets.to_i
        program_hand = rand(3)

        hands= ["グー", "チョキ", "パー"]

        puts "ぽい！"

        puts "あなた:#{hands[player_hand]}", "あいて:#{hands[program_hand]}"

        win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        draw = player_hand == program_hand
        lose = player_hand != player_hand


        if draw
          puts "あいこで！"
        return true

        elsif win
          puts "あなたの勝ち！！"
          winner = win
        return false, winner

        else
          puts "あなたの負けです..."
          loser = lose
        return false, loser
        end
        end

        next_game = true

        puts "最初はグー！じゃんけん！"

        while next_game
          next_game, draw = janken
        end

  #あっちむいてほい
  def atmit(winner)
        puts "あっちむいて..."
        puts "[0] うえ\n[1] した\n[2] みぎ\n[3]ひだり\n[4]やめる"
        
        player_dire = gets.to_i
        program_dire = rand(4)
        
        direction= ["うえ", "した", "みぎ", "ひだり"]
        
        puts "ほい！"
        
        puts "あなた:#{direction[player_dire]}", "あいて:#{direction[program_dire]}"
        
    if player_dire == program_dire
        puts "あなたの勝ち！"
    return true
    
    else
       puts "もういっかい！"
    return false
      end
    end

def atmit(loser)
      puts "あっちむいて..."
      puts "[0] うえ\n[1] した\n[2] みぎ\n[3]ひだり\n[4]やめる"
      
      player_dire = gets.to_i
      program_dire = rand(4)
      
      direction= ["うえ", "した", "みぎ", "ひだり"]
      
      puts "ほい！"
      
      puts "あなた:#{direction[player_dire]}", "あいて:#{direction[program_dire]}"
    
  if player_dire == program_dire
       puts "あなたの負け"
    return true
    
    else
        puts "もういっかい！"
    return false
    end
  end



  next_game = true

  while next_game
    next_game = janken
    
  end