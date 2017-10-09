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
    def next_players
      @players.reverse
    end
  end
end