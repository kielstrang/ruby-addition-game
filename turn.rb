require './question'

module MathGame
  class Turn
    def initialize(players)
      @players = players
    end
    def do_turn
      question = MathGame::Question.new
      puts "What does #{question.a} plus #{question.b} equal?"
      @players[0].lives -= 1
      puts "P1: #{@players.find{|p| p.id == 1}.lives} vs P2: #{@players.find{|p| p.id == 2}.lives}"
    end
    def winner?
      @players.any? {|player| player.lives <= 0}
    end
    def next_players
      @players.reverse
    end
  end
end