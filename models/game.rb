class Game

  def self.rockPaperScissor(selection)
    win = nil

    player1_selection = Game.player1(selection)
    player2_selection =rand(0..2)
    if player1_selection == 0 && player2_selection == 1
      win ='Player2 win by showing paper'
    elsif player1_selection == 1&& player2_selection == 2
      win ='Player2 win by showing Scissors'
    elsif player1_selection== 2 && player2_selection == 0
      win ='Player2 win by showing rock'
    elsif player1_selection== 1 && player2_selection == 0
      win = 'you won by showing Paper'
    elsif player1_selection== 2 && player2_selection ==1
      win = 'you won by showing Scissors'
    elsif player1_selection==0 && player2_selection ==2
      win = 'you won by showing Rock'
    elsif player1_selection==player2_selection
       win ="tie for both of you"
    end
    return win
  end
  def self.player1(selection)
    if selection =="rock"
      selection = 0
    elsif selection == "paper"
      selection = 1
    elsif selection =="scissors"
      selection = 2
    end
  end
end
