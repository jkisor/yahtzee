class PairScorer
  
  def score(roll)
    (pairs(roll).max || 0) * 2
  end

  private

  def pairs(roll)
    roll.group_by { |number| number }.select { |k,v| v.count >= 2 }.keys
  end

end