class Number
  
  def initialize(number)
    @number = number
  end

  def score(dice)
    dice.select { |x| x == @number }.reduce(0, :+)
  end

end