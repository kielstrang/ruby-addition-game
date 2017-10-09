# Turn
# takes [active_player, other_player]
# creates a Question
# displays question and takes input
# reports correct/incorrect
# reports winner or new scores

# next_players
# winner?
module MathGame
  class Turn
    def initialize(players)
      @players = players
    end
    def do_turn
      @players[0].lives -= 1
      puts "#{@players[0].name}: #{@players[0].lives} vs #{@players[1].name}: #{@players[1].lives}"
    end
    def winner?
      @players.any? {|player| player.lives <= 0}
    end
    def next_players
      @players.reverse
    end
  end
end