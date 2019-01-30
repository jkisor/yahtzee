class ThreeOfAKindScorer
  
  def score(roll)
    roll = Roll.new(roll)
    
    (roll.trios.max || 0) * 3
  end

end