module MathGame
  class Question
    attr_reader :a, :b
    def initialize
      @a = 1 + rand(19)
      @b = 1 + rand(19)
    end
    def correct? (answer)
      answer == @a + @b
    end
  end
end