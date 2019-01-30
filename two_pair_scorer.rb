require "./roll"

class TwoPairScorer
  
  def score(roll)
    roll = Roll.new(roll)

    return 0 if roll.pairs.count < 2

    roll.pairs.map { |number| number * 2 }.reduce(0, :+)
  end

end
