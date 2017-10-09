require './player'
require './turn'

module MathGame
  class Game
    def initialize
      @players = [MathGame::Player.new('Player 1'), MathGame::Player.new('Player 2')]
    end

    def play
      puts 'You just lost the game!'
    end
  end
end