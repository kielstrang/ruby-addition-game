require './player'
require './turn'

module MathGame
  class Game
    def initialize
      @players = [MathGame::Player.new(1), MathGame::Player.new(2)]
    end

    def play
      while true
        turn = MathGame::Turn.new(@players)
        turn.do_turn
        break if turn.winner?
        @players = turn.next_players
      end
    end
  end
end