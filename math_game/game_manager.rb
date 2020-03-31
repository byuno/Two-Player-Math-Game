class GameManager 

  attr_accessor :players, :current_player
  
  def initialize
    pp player1 = Player.new("Player 1")
    pp player2 = Player.new("Player 2")
    @players = [player1, player2]
    @current_player = @players[0]
  end
 
  
 
  def switch_player
    if(self.current_player == @players[0])
      self.current_player = @players[1]
    else
      self.current_player = @players[0]
    end
  end
  
  # puts "this is current player lives #{current_player.lives}"
  
  def round() 
    "----- NEW TURN -----"
    question = Question.new()
    puts "#{current_player.name}: #{question.question}"
    puts question.answer
    answer = gets.chomp.to_i
    
    if(question.answer?(answer))
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: NO! You are not correct."
      current_player.lost_life
    end
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
    switch_player
  end
  
  def gameover
    #do something here
    switch_player
    "----- GAME OVER -----"
    puts "#{current_player.name} wins with a score of #{current_player.lives}"
    "Good bye!"
  end

  def start 
    while(current_player.lives > 0)
      round
    end
    gameover
  end
  
end





# puts "test1.select_player.inspect is below"
# puts test1.select_player.inspect
# puts test1.switch_player.inspect
# puts test1.switch_player.inspect
# puts test1.switch_player.inspect
# puts test1.round


# require("./player")
# require("game_manager")

# game = GameManager.new(...)

# while (!game.finished?) do
#   game.play_round
# end