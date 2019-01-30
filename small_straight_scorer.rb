class SmallStraightScorer

  def score(roll)
    return 0 unless roll.sort == [1,2,3,4,5]
    
    roll.reduce(0, :+)
  end

end
