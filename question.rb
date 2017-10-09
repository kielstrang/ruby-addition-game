# Question:
# generates 2 random integers in [1, 20]
# correct?
module MathGame
  class Question
    attr_reader :a, :b
    def initialize
      @a = 1 + rand(19)
      @b = 1 + rand(19)
    end
  end
end