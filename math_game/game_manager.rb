class Game_manager 
  
  attr_accessor :players, :active_player, :round_number

def initialize
@players = []
@active_player = nil
@round_number = 0

end

def next_round
  self.round_number += 1
end




  
end

test1 = Game_manager.new()
puts test1.next_round
puts test1.next_round