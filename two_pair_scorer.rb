class Roll
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def pairs
    grouped = @numbers.group_by { |number| number }
    grouped.select { |k,v| v.count >= 2 }.keys
  end

end

class TwoPairScorer
  
  def score(roll)
    roll = Roll.new(roll)

    return 0 if roll.pairs.count < 2

    roll.pairs.map { |x| x * 2 }.reduce(0, :+)
  end

end
