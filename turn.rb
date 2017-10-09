require './question'

module MathGame
  class Turn
    def initialize(players)
      @players = players
    end
    def do_turn
      question = MathGame::Question.new
      puts "#{@players[0].name}: What does #{question.a} plus #{question.b} equal?"
      answer = gets.chomp.to_i
      puts "#{answer} is cool, but you lose anyway!"
      @players[0].lives -= 1
      if @players[0].lives > 0
        puts "P1: #{@players.find{|p| p.id == 1}.lives} vs P2: #{@players.find{|p| p.id == 2}.lives}"
      else
        puts "#{@players[1].name} wins with a score of #{@players[1].lives}/3"
      end
    end
    def winner?
      @players.any? {|player| player.lives <= 0}
    end
    def next_players
      @players.reverse
    end
  end
end