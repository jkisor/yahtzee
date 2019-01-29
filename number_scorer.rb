class NumberScorer
  
  def initialize(number)
    @number = number
  end

  def score(roll)
    roll.select { |x| x == @number }.reduce(0, :+)
  end

end