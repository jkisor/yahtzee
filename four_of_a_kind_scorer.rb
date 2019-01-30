class FourOfAKindScorer
  
  def score(roll)
    roll = Roll.new(roll)
    
    (roll.n_of_a_kind(4).max || 0) * 4
  end

end