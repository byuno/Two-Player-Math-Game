class Question 

  attr_accessor :number1, :number2, :addition

  def initialize()
    @number1 = rand(20)
    @number2 = rand(20)
    @addition = @number1 + @number2
  end

  def question
    "What does #{self.number1} plus #{self.number2} equal?"
  end

  def answer?(player_answer)
    player_answer == @addition
  end

  def answer
    @addition
  end

end

# question1 = Question.new()
# puts question1.question
# puts question1.answer?(40)


