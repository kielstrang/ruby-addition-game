require './player'
require './turn'

module MathGame
  class Game
    def initialize
      @players = [MathGame::Player.new('Player 1'), MathGame::Player.new('Player 2')]
    end

    def play
      p @players
      turn = MathGame::Turn.new(@players)
      @players = turn.next_players
      p @players
    end
  end
end