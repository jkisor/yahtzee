require "./roll"

class PairScorer
  
  def score(roll)
    roll = Roll.new(roll)

    (roll.pairs.max || 0) * 2
  end
  
end