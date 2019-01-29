class PairScorer
  
  def score(roll)
    pairs = roll.group_by { |number| number }.select { |k,v| v.count >= 2 }
    (pairs.keys.max || 0) * 2
  end

end